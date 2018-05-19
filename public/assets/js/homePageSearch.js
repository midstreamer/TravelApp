
$(document).ready(function () {
    console.log("We live");



    var earth;
    function initialize() {
        earth = new WE.map('earth_div');
        earth.setView([20, 0], 2);
        WE.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(earth);
        // Start a simple rotation animation
        var before = null;
        requestAnimationFrame(function animate(now) {
            var c = earth.getPosition();
            var elapsed = before ? now - before : 0;
            before = now;
            earth.setCenter([c[0], c[1] + 0.1 * (elapsed / 30)]);
            requestAnimationFrame(animate);
        });
    }

    initialize();


    $.ajax({
        url: "https://maps.googleapis.com/maps/api/geocode/json?address=Egypt&key=AIzaSyBNoUFS9OOH34ztpgmTmcvb8DPYEBCxxlc", success: function (result) {
            console.log(result.results[0].geometry.location);
            dropMarker(result.results[0].geometry.location.lng, result.results[0].geometry.location.lat ,"Rohan");
        }
    });


    function dropMarker(long, lat, title, text){
        console.log("dropping marker");
        var marker = WE.marker([long, lat]).addTo(earth);
        if(text){
            marker.bindPopup("<b>"+title+"</b><br>"+text+"<br />", {maxWidth: 150, closeButton: true});
        }
        else{
            marker.bindPopup("<b>"+title+"</b>", {maxWidth: 150, closeButton: true});
        }
        
    }

    $("#searchSubmit").on("click", participantSearchHome);

    function participantSearchHome() {

        console.log("storySubmit")
        event.preventDefault();
        var search_input = $("#search_input").val().trim();
        console.log(search_input)


        $.get("/api/homePage/search", search_input, function (data, cb) {
            console.log(data)
        }
        ).then(function (data) {
            if (data) {
                alert("search is done ");
                console.log(data)
            }
        });


        
    }


   




});