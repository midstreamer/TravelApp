$(document).ready(function () {
    console.log("check user home page")
  
    listOfUsers()
  
    // get participant from API
    function listOfUsers() {
      $.get("/api/blog", function (data) {
        console.log(data)
        // 
        for (var i = 0; i < data.length; i++) {
          console.log(data[i])
         }

      });
    }

  })