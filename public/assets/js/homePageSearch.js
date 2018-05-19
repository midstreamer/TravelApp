
$(document).ready(function () {
    console.log("We live");



    var earth;
    var keepAnimating = true;
    function initialize() {
        earth = new WE.map('earth_div');
        earth.setView([20, 0], 2);
        WE.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(earth);
        // Start a simple rotation animation
        var before = null;
        requestAnimationFrame(function animate(now) {
            if(keepAnimating){
            var c = earth.getPosition();
            var elapsed = before ? now - before : 0;
            before = now;
            earth.setCenter([c[0], c[1] + 0.1 * (elapsed / 30)]);
           
                requestAnimationFrame(animate);

            }
        });
    }

    initialize();


    


    function dropMarker(long, lat, title, text) {
        console.log("dropping marker");
        var marker = WE.marker([long, lat]).addTo(earth);
        if (text) {
            marker.bindPopup("<b>" + title + "</b><br>" + text + "<br />", { maxWidth: 150, closeButton: true });
        }
        else {
            marker.bindPopup("<b>" + title + "</b>", { maxWidth: 150, closeButton: true });
        }

    }

    $("#searchSubmit").on("click", participantSearchHome);

    function participantSearchHome() {

        event.preventDefault();
        var search_input = $("#search_input").val().trim();
        console.log(search_input)

        var newSearch_input = {
            newSearch_input: search_input
        }
        console.log(search_input)
        $.get("/api/homepage/search", newSearch_input, function (data, cb) {
            console.log(data)
        }
        ).then(function (data) {
            if (data) {

                $.ajax({
                    url: "https://maps.googleapis.com/maps/api/geocode/json?address="+search_input+"&key=AIzaSyBNoUFS9OOH34ztpgmTmcvb8DPYEBCxxlc", success: function (result) {
                        // console.log(result.results[0].geometry.location);
                        if(data.user_location){
                            keepAnimating = false;

                            dropMarker(result.results[0].geometry.location.lat, result.results[0].geometry.location.lng);
                            earth.panTo([result.results[0].geometry.location.lat, result.results[0].geometry.location.lng]);

                            // $( "#earth-container" ).animate({
                            //     opacity: 0.25,
                            //     left: "+=50",
                            //     height: "toggle"
                            //   }, 5000, function() {
                            //     // Animation complete.
                            //   });
                        }
                        
                        
                    }
                });

                
                console.log(data)
            }
        });

        
    }




    $("#earth-container").mouseenter(function(){
        console.log("mouseenter");
        keepAnimating = false;
    })

     $("#earth-container").mouseleave(function(){
         console.log("mouseleave");
        keepAnimating = true;
        var before = null;

        requestAnimationFrame(function animate(now) {
            if(keepAnimating){
            var c = earth.getPosition();
            var elapsed = before ? now - before : 0;
            before = now;
            earth.setCenter([c[0], c[1] + 0.1 * (elapsed / 30)]);
           
                requestAnimationFrame(animate);

            }
        });
    })


});