
<<<<<<< HEAD
    app.post("/api/blog/Story", function (req, res) {
      // console.log(req.user)
      console.log(req.params.test)
      db.Blog.create({
    user_StoryList:req.params.newStoryContent,
    user_title:req.params.newStoryTitle,
    ParticipantClientId:'2'
    
      }),
      db.user_location.create({
        user_location:req.params.newStoryLocation,
        ParticipantClientId:'2',
          })
      
      
      .then(function (data) {
        console.log(data)
        res.redirect("/")
      });
    });
=======
$(document).ready(function () {

  $( "#logout" ).on("click", function() {

    alert("logout");
    // $.get( "/logout", function( data ) {
    //  });
  });
>>>>>>> 49d5fdd1fcf095be5dc70ef95bf608ce07b703ff

});




// $('.modal').modal();
 
// $("#addNewStroy").on("click", addNewPost);
// //taking input
// function addNewPost () {
//   console.log("was clicked ")

 

// };
