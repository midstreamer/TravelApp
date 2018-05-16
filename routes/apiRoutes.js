// Requiring our models
var db = require("../models");

// Routes
// =============================================================
module.exports = function (app) {
  // getting users from database
  app.get("/api/getuser", function (req, res) {
    db.Participants.findAll({
      include : {model:db.Blog}
    }).then(function (dbParticipants) {
      res.render("index", {user: dbParticipants});
      console.log(dbParticipants)
    });
  });

  app.get("/api/getuser/:id", function(req, res) {
    db.Participants.findOne({
      where: {
        client_id: req.params.id
      }
    }).then(function(dbParticipants) {
      res.render("userProfile", {user: dbParticipants.dataValues});
          console.log(dbParticipants.dataValues)
    });
  });

  app.get("/api/blog/:id", function(req, res) {
    db.Participants.findOne({

      where: {
        client_id: req.params.id
      },
      include: {
        model:db.Blog,
        
      }
    }).then(function(dbParticipants) {
      res.render("blog", {user: dbParticipants.dataValues});
      console.log(dbParticipants)
    });
  });

  // app.get("/api/blog/:participantid", function(req, res) {
  //   db.Blog.findOne({
  //     where: {
  //       ParticipantClientId: req.params.participantid
  //     }
  //   }).then(function(dbBlog) {
  //     res.render("blog", {story: dbBlog.dataValues});
  //     console.log(dbBlog.dataValues)
  //   });
  // });
  
  //creating new user 
  app.post("/api/createuser", function (req, res) {
    db.Participants.create(req.body
    ).then(function (dbParticipants) {
      res.json(dbParticipants);
    });
  });

// findAll stories for participant 
  app.get("/api/blog", function(req, res) {
    db.Participants.findAll({
      // client_id:'1',
      include: [db.Blog]
    }).then(function(dbParticipants) {
      res.json(dbParticipants);
    });
  });

  app.get("/app/:id",function (req, res) {

  })


}