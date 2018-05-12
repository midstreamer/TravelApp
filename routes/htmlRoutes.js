var path = require("path");

module.exports = function(app) {
//this will be for creating user profile 
app.get("/", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/assets/home.html"));
  });



    app.get("/create", function(req, res) {
        res.sendFile(path.join(__dirname, "../public/assets/userProfileInfo.html"));
      });

};