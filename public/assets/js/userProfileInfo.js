
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

      if (map.dataProvider.areas[i].showAsSelected && (map.dataProvider.areas[i].id!=area.id)) {
        map.dataProvider.areas[i].showAsSelected = false;
        e.chart.returnInitialColor(map.dataProvider.areas[i]);
      }


    }



    area.showAsSelected = !area.showAsSelected;

    if(area.showAsSelected){

      $.get("/api/profile/search/" + area.enTitle, function (data, cb) {
        // console.log(data)
      })
        .then(function (data) {

          console.log(data);
  
          if (data) {
            // console.log(data);
            // var userArray =[];
  
            var blogArray = [];
            for (var i = 0; i < data.length; i++) {
  
  
              for (var j = 0; j < data[i].Blogs.length; j++) {


                if(data[i].Blogs[j].ParticipantClientId===parseInt($("#get-blog-user").text())){
                  blogArray.push(data[i].Blogs[j]);
                }
  
                
                
              }
            }
  
  
            var blogContainer = $("#user-profile-blog-container");
            blogContainer.empty();
  
            var htmlString = '<h4 class="header white-text">My Stories</h4>';
            blogArray.forEach(function(blog){
  
              htmlString +='<div class="row"><div class="card horizontal col s12"><div><div class="row"><div class="card-image col s6"><img src="https://cdn.pixabay.com/photo/2018/05/13/17/18/paris-3397173_1280.jpg" alt="" class="card-image responsive-img storyImg"></div><div class="col s6"><h4 class="card-title">'+blog.user_title+'<i class="material-icons right">more_vert</i></h4></div></div><div class="row"><div  class="card-stacked"><p>'+blog.user_StoryList+'</p></div><div class="card-action"><a href="/api/blog/'+blog.ParticipantClientId+'" target="_blank">Read Story</a></div></div></div></div></div>';
            })
  
            blogContainer.html(htmlString);
  
  
  
          }
          else {
            alert("No blogs for that location");
          }
  
        });
      
    }

   
}

});











