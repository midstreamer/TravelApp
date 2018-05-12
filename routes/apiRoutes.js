// Requiring our models
var db = require("../models");

// Routes
// =============================================================
module.exports = function(app) {
    // getting users from database
app.get("/api/getuser", function(req, res) {
        db.Participants.findAll({}).then(function(dbParticipants) {
          res.json(dbParticipants);
          console.log(dbParticipants)
        });
      });






}