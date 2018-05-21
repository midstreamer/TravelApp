
$(document).ready(function () {
  $('div.icon-block').fadeIn(2200);
  $('div.card-panel').fadeIn(2200);
  $('div.card-panel').fadeIn(2200);

  $("#logout").on("click", function () {

    $.get("/logout", function (data) {
      console.log("back from logout");
      window.location = ("/");
    });
  });

  var map = AmCharts.makeChart("chartdiv", {
    "type": "map",
    "theme": "light",
    "projection": "eckert3",
    "dataProvider": {
      "map": "worldLow",
      "getAreasFromMap": true
    },
    "areasSettings": {
      "selectedColor": "#CC0000",
      "selectable": true
    },
    /**
     * Add click event to track country selection/unselection
     */
    "listeners": [{
      "event": "clickMapObject",
      "method": function (e) {

        // Ignore any click not on area
        if (e.mapObject.objectType !== "MapArea")
          return;

        var area = e.mapObject;

        // Toggle showAsSelected


        // Update the list
        selectAndSearchByCountry(e, area);
      }
    }]
  });

  /**
   * Function which extracts currently selected country list.
   * Returns array consisting of country ISO2 codes
   */
  function selectAndSearchByCountry(e, area) {
    var selected = [];
    for (var i = 0; i < map.dataProvider.areas.length; i++) {

      if (map.dataProvider.areas[i].showAsSelected) {
        map.dataProvider.areas[i].showAsSelected = false;
        e.chart.returnInitialColor(map.dataProvider.areas[i]);
      }


    }

    area.showAsSelected = !area.showAsSelected;

    $.get("/api/profile/search/" + area.enTitle, function (data, cb) {
      // console.log(data)
    })
      .then(function (data) {

        if (data) {

          console.log(data);
          // var userArray =[];
          // for (var i = 0; i < data.length; i++) {


          //   for (var j = 0; j < data[i].Blogs.length; j++) {
          //     userArray.push(data[i].Blogs[j].Participant)
          //   }
          // }
          // var searchContainer = $("#search-result-container");
          // searchContainer.empty();
          // var htmlString = "";
          // userArray.forEach(function(user){
          //     htmlString+='<div class="col s2 m6"><div class="card grey text-darken-4" id="card1"><span class="card-content black-text"><span class="card-title" id="cardTitle">'+user.user_First_name + ' ' + user.user_Last_name+ '</span><img src="'+user.user_pic_profile+'" alt="" class="circle-frame"> <div class="card-content"><p class="userPageStory"> '+user.user_bio_info+' </p></div> <div class="card-action"><a class="waves-effect waves-light btn-small pink" id="searchSubmit"href="/api/otheruser/{{ client_id }}">CHECK OUT PROFILE</a> </div><br><!-- <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a> --></ul></span></div></div>';
          //   });
          //   searchContainer.html(htmlString);

          



        }
        else {
          alert("No blogs for that location");
        }

      });
}

});











