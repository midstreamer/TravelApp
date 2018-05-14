$(document).ready(function () {
    console.log("check")

    $("#submit").on("click", yo);
    // var participant_pic

    // create participant  
    function yo() {
        var participant_name = $("#participant_name").val().trim();
        var participant_last_name = $("#participant_last_name").val().trim();
        var participant_email = $("#participant_email").val().trim();
        var participant_blog = $("#participant_blog").val().trim();
        var participant_pic = $("#participant_pic").val().trim();
        var NewUser = {
            user_First_name: participant_name,
            user_Last_name: participant_last_name,
            user_email: participant_email,
            user_bio_info: participant_blog,
            user_pic_profile: participant_pic
        }

        $.post("/api/createuser", NewUser, function (data, cb) {
            console.log("i was clicked")

            console.log(data)
           
        });

        $("#participant_name").val('');
        $("#participant_last_name").val('');
        $("#participant_email").val('');
        $("#participant_blog").val('');
        $("#participant_pic").val('');


    }



})