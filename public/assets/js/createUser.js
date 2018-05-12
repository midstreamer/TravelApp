$(document).ready(function () {
    console.log("check")

    $("#submit").on("click", yo);
    // var participant_pic

    // create participant  
    function yo() {
        var participant_name = $("#participant_name").val();
        var participant_last_name = $("#participant_last_name").val();
        var participant_email = $("#participant_email").val();
        var participant_blog = $("#participant_blog").val();

        var NewUser = {
            user_First_name: participant_name,
            user_Last_name: participant_last_name,
            user_email: participant_email,
            user_bio_info: participant_blog
        }

        $.post("/api/createuser",NewUser, function (data, cb) {
            console.log("i was clicked")

            console.log(data)
           
        });

    }



})