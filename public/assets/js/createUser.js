$(document).ready(function () {
    console.log("check")

    $("#submit").on("click", yo);
    // var participant_pic

    // create participant  
    function yo() {


        event.preventDefault();
    
    
        
  
        var participant_name = $("#participant_name").val().trim();
        var participant_last_name = $("#participant_last_name").val().trim();
        var participant_email = $("#participant_email").val().trim();
        var participant_blog = $("#participant_blog").val().trim();
        var participant_pic = $("#participant_pic").val().trim();
        var participant_password = $("#participant_password").val().trim();

        if (!participant_email || !participant_password) {
            alert("email and password required");
            return;
          }

        
        var NewUser = {
            user_First_name: participant_name,
            user_Last_name: participant_last_name,
            user_email: participant_email,
            user_bio_info: participant_blog,
            user_pic_profile: participant_pic,
            user_password: participant_password
        }

        // $.post("/api/createuser", NewUser, function (data, cb) {
        //     console.log("i was clicked")

        //     console.log(data)
           
        // });

        signUpUser(NewUser);


        $("#participant_name").val('');
        $("#participant_last_name").val('');
        $("#participant_email").val('');
        $("#participant_blog").val('');
        $("#participant_pic").val('');
        $("#participant_password").val('');



        // alert("User successfully created!");


    }


    function signUpUser(user) {
        $.post("/api/createuser", user).then(function(data) {
        console.log("trying to replace");
          window.location = ("/login");
          // If there's an error, handle it by throwing up a bootstrap alert
        }).catch(function(e){
            console.log(e);
        });
      }
    
      function handleLoginErr(err) {
        $("#alert .msg").text(err.responseJSON);
        $("#alert").fadeIn(500);
      }



})