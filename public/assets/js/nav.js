$(document).ready(function () {
    console.log("check");

    $('#myProfileLink').on("click", directMyProfile);
    event.preventDefault();   
function directMyProfile() {
        console.log("going to my profile");
        
        $.get("/api/getClientId", function(data, cb) {
            console.log(data);
            
        }).then(function(data){
            console.log(data);
            console.log("here");
            location.href = "/api/myprofile/"+data;
        });
    }
});


