var path = require("path");

module.exports = function(app) {
//this will be for creating user profile 
app.get("/", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/assets/landing.html"));
  });


    app.get("/getUser", function(req, res) {
        res.sendFile(path.join(__dirname, "../public/assets/userProfileInfo.html"));
      });


      app.get("/createUser", function(req, res) {
        res.sendFile(path.join(__dirname, "../public/assets/createUser.html"));
      });

};