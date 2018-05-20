
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
        console.log(area);
        // Toggle showAsSelected
        area.showAsSelected = !area.showAsSelected;
        e.chart.returnInitialColor(area);

        // Update the list
        document.getElementById("selected").innerHTML = JSON.stringify(getSelectedCountries());
      }
    }]
  });

  /**
   * Function which extracts currently selected country list.
   * Returns array consisting of country ISO2 codes
   */
  function getSelectedCountries() {
    var selected = [];
    for (var i = 0; i < map.dataProvider.areas.length; i++) {
      if (map.dataProvider.areas[i].showAsSelected)
      console.log(map.dataProvider.areas[i]);
        selected.push(map.dataProvider.areas[i].id);
    }
    return selected;
  }

});
