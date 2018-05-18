$(document).ready(function() {
    // Getting references to our form and inputs
    var loginForm = $("form.login");
    var emailInput = $("input#email-input");
    var passwordInput = $("input#password-input");

    
  
    // When the form is submitted, we validate there's an email and password entered
    loginForm.on("submit", function(event) {
      event.preventDefault();
      var userData = {
        email: emailInput.val().trim(),
        password: passwordInput.val().trim()
      };
  
      if (!userData.email || !userData.password) {
        return;
      }
  
      // If we have an email and password we run the loginUser function and clear the form
      emailInput.val("");
      passwordInput.val("");
      
      loginUser(userData.email, userData.password);
     
    });
  
    // loginUser does a post to our "api/login" route and if successful, redirects us the the members page
    function loginUser(email, password) {
      $.post("/api/login", {
        email: email,
        password: password
      }).then(function(data) {

        console.log(data);

        if(data.search("<title>Passport Authentication</title>")>=0){

     
          window.location = ("/login");
        }
        else if(data.search(" <title>Yaatra Home</title>")>=0){
            window.location = ("/api/getuser");
        }
       
      }).fail(function(xhr, status, error) {
        console.log(xhr +" \n" + status +"\n" +error);
    });
    }
  
  });