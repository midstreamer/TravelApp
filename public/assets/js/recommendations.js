



$(document).ready(function () {

    
    //for rating 
    $('.tooltipped').tooltip({ delay: 50 }); 
    // FOOD


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
    
          $.get("/api/myprofile/search/" + area.enTitle, function (data, cb) {
            // console.log(data)
          })
            .then(function (data) {
    
              console.log(data);
      
              if (data) {
                // console.log(data);
                // var userArray =[];
      
                var blogArray = [];
                for (var i = 0; i < (data.length-1); i++) {
      
      
                  for (var j = 0; j < data[i].Blogs.length; j++) {
                    

    
                    if(data[i].Blogs[j].ParticipantClientId===data[data.length-1]){
                      blogArray.push(data[i].Blogs[j]);
                    }
      
                    
                    
                  }
                }
      
      
                var blogContainer = $("#my-user-profile-blog-container");
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

    //for rating 
    $('.tooltipped').tooltip({ delay: 50 });
    // FOOD

    //hide events div for input 
    $('#foodToHide').hide()

    //on click how
    $("#foodClick").on("click", function () {
        $('#foodToHide').show()
    })
    //food to hide
    $("#foodCloseToHide").on("click", function () {
        $('#foodToHide').hide()
    })
    // FOOD
    $("#foodOnSubmit").on("click", foodOnSubmit);

    function foodOnSubmit() {
        console.log("foodOnSubmit")
        event.preventDefault();
        var food_input = $("#food_input").val().trim();
        var newFood_input = {
            newFood_input: food_input
        }
        console.log(newFood_input)
        $.post("/api/create/food", newFood_input, function (data, cb) {
            console.log(data)
        }
        ).then(function (data) {
            if (data) {
                alert("food_input was added thanks");
                // console.log(data)
                $('#foodToHide').hide()
                location.reload();
            }
        });
    }


    //hide attraction div for input 
    $('#attractionsToHide').hide()
    //on click how
    $("#attractionsClick").on("click", function () {
        $('#attractionsToHide').show()
    })

    $("#AttractionsCloseToHide").on("click", function () {
        $('#attractionsToHide').hide()
    })
    // Attractions
    $("#attractionsOnSubmit").on("click", AttractionsOnSubmit);

    function AttractionsOnSubmit() {
        console.log("attractionsOnSubmit")
        event.preventDefault();
        var attractions_input = $("#attractions_input").val().trim();
        var newAttractions_input = {
            newAttractions_input: attractions_input
        }
        console.log(newAttractions_input)
        $.post("/api/create/attractions", newAttractions_input, function (data, cb) {
            // console.log(data)
        }
        ).then(function (data) {
            if (data) {
                alert("attractions_input was added thanks");
                // console.log(data)
                $('#attractionsToHide').hide()
                location.reload();
            }
        });
    }




    // EVENTS

    //hide events div for input 
    $('#eventsToHide').hide()
    //close option
    $('#eventsCloseToHide').show()
    $("#eventsCloseToHide").on("click", function () {
        $('#eventsToHide').hide()
    })
    //on click how
    $("#eventsClick").on("click", function () {
        $('#eventsToHide').show()
    })
    // EVents
    $("#eventsOnSubmit").on("click", eventsOnSubmit);

    function eventsOnSubmit() {
        console.log("eventsOnSubmit")
        event.preventDefault();
        var events_input = $("#events_input").val().trim();
        var newEvents_input = {
            newEvents_input: events_input
        }
        console.log(newEvents_input)
        $.post("/api/create/events", newEvents_input, function (data, cb) {
            // console.log(data)
        }
        ).then(function (data) {
            if (data) {
                alert("events_input was added thanks");
                // console.log(data)
                $('#eventsToHide').hide()
                location.reload();
            }
        });
    }


    $("#update").on("click", removeEvent);

    function removeEvent() {
        $.post('/api/event/remove/:id', function (data, cb) {

        }).then(function (data) {
            if (data) {
                // alert("event was removed ");
                // location.reload();
            }
        });
    }


    $("#updateFood").on("click", removeFood);

    function removeFood() {
        $.post('/api/food/remove/:id', function (data, cb) {

        }).then(function (data) {
            if (data) {
                // alert("event was removed ");
                // location.reload();
            }
        });
    }

    $("#updateAtt").on("click", removeAtt);




    function removeAtt() {
        $.post('/api/att/remove/:id', function (data, cb) {

        }).then(function (data) {
            if (data) {
                // alert("event was removed ");
                // location.reload();
            }
        });
    }

    $("#updatePost").on("click", deletePostList);
    function deletePostList() {
        $.post('/api/delete/postList/:id', function (data, cb) {

            // res.json(data)
        }).then(function (data) {
            if (data) {
                // alert("event was removed ");
                // location.reload();
            }
        });


    }




});


