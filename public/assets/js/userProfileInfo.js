$('.modal').modal();
 
  $("#addNewStroy").on("click", addNewPost);
//taking input
  function addNewPost () {
    console.log("was clicked ")

    $( "#logout" ).click(function() {
      $.get( "/logout", function( data ) {
       });
    });

  };





