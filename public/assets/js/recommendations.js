



$(document).ready(function () {

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
            var newFood_input ={
                newFood_input:food_input
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
        var newAttractions_input ={
            newAttractions_input:attractions_input
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
            var newEvents_input ={
                newEvents_input:events_input
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



        // $.post('/api/event/remove/:id', function(data, cb) {
        //   }).then(function (data) {
        //     if (data) {
        //         alert("event was removed ");
        //         location.reload();
        //     }
        // });
          


});


