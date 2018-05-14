$(document).ready(function () {
  console.log("check user profile")

  yo()

  // get participant from API
  function yo() {
    maybe()
    $.get("/api/getuser/", function (data) {
      // console.log(data)
      // will need to change this logic to pull only one participant based on click (/:id) but for now just one should be good
      // for (var i = 0; i < data.length; i++) {
      //   console.log(data[0])
      //  }
       var row = $("<div>");
       var bow = $("<div>");
      //  pushing user about me to HTML with id of nioInfo_msg
       row.addClass("bioInfo_msg");
       row.append("<p>" + data[0].user_bio_info + "</p>");
       //pushing user last and first name to partName id in HTML
       bow.addClass("partName");
       bow.append("<p>" + data[0].user_First_name + "  " + data[0].user_Last_name +"</p>");
          // pushing user picture to HTML 
      $("#match-img").attr("src", data[0].user_pic_profile);
       $("#partName").prepend(bow);
       $("#story").prepend(row);
    });
  }
function maybe(){
  $(this).hasClass("circle")
  console.log($(this))

}


})