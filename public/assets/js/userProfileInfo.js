
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
      "method": function(e) {
        
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
    for(var i = 0; i < map.dataProvider.areas.length; i++) {

      // var location = {
      //   location_name: map.dataProvider.areas[i].enTitle,
      //   location_codes: map.dataProvider.areas[i].id
      // }

      // $.post("/api/populateLocations", location).then(function(data) {
        
        
      //   // If there's an error, handle it by throwing up a bootstrap alert
      // });



      if(map.dataProvider.areas[i].showAsSelected){
        map.dataProvider.areas[i].showAsSelected = false;
        e.chart.returnInitialColor(map.dataProvider.areas[i]);
      }
     

    }
    area.showAsSelected = !area.showAsSelected;
  
  }

  





});
