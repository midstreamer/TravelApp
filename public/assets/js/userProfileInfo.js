$(document).ready(function () {
  console.log("check")
  // var participant_name = $("#participant_name");
  // var participant_last_name =$("#participant_last_name");
  // var participant_email = $("#participant_email");
  // var participant_blog =$("#participant_blog");


  // var participant_pic
   yo()
  // get participant 
  function yo() {
    $.get("/api/getuser/", function (data) {
     console.log(data)

    });
  }



})