$(document).ready(function () {
    console.log("check user home page")
  
    listOfUsers()
  
    // get participant from API
    function listOfUsers() {
      $.get("/api/blog", function (data) {
        console.log(data)
        // need to fix the size of pic and make it nice will also add blog story
        for (var i = 0; i < data.length; i++) {
          console.log(data[i]) 
         var imgLocation = $("<div class='profileInfo'>");
          var picture = $("<img>").addClass("circle").attr("src", data[i].user_pic_profile)
          var dropTitle = $("<div class = 'raiting drop'>").text("Name"+data[i].user_First_name + "  " + data[i].user_Last_name )
          imgLocation.append(picture);
          imgLocation.append(dropTitle);
          //imgLocation.append(dropRaiting);
          $("#users_list").append(imgLocation);
         }
   


      });
    }

  })