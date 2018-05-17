// Requiring our models
var db = require("../models");
var passport = require("../config/passport");


// Routes
// =============================================================
module.exports = function (app) {
  // HOME PAGE: getting users from database
  app.get("/api/getuser", function (req, res) {
    db.Participants.findAll({
      include: { model: db.Blog }
    }).then(function (dbParticipants) {
      res.render("index", { user: dbParticipants });
      console.log(dbParticipants)
    });
  });

  //USER PROFILE PAGE
  app.get("/api/getuser/:id", function (req, res) {
    db.Participants.findOne({
      where: {
        client_id: req.params.id
      },
      include: [db.Blog, db.rec_food, db.rec_att, db.rec_eve]
    }).then(function (dbParticipants) {
      res.render("userProfile", { user: dbParticipants.dataValues, blog: dbParticipants.dataValues.Blogs, food: dbParticipants.dataValues.rec_foods, attractions: dbParticipants.dataValues.rec_atts, events: dbParticipants.dataValues.rec_eves });

      console.log(dbParticipants.dataValues.rec_eves[0])

    });
  });

  //USER BLOG PAGE
  app.get("/api/blog/:id", function (req, res) {
    db.Participants.findOne({

      where: {
        client_id: req.params.id
      },
      include: [db.Blog, db.rec_food, db.rec_att, db.rec_eve]
    }).then(function (dbParticipants) {
      res.render("blog", { user: dbParticipants.dataValues, blog: dbParticipants.dataValues.Blogs, food: dbParticipants.dataValues.rec_foods, attractions: dbParticipants.dataValues.rec_atts, events: dbParticipants.dataValues.rec_eves });

      // console.log(dbParticipants.dataValues.Blogs[0].dataValues.user_StoryList)
    });
  });

  //creating new story blog need some work need to include id of the person
  app.post("/api/blog/Story", function (req, res) {
    console.log(req.body)
    console.log("here")
    res.redirect("/api/getuser/")

  })

  // Route for signing up a user. The user's password is automatically hashed and stored securely thanks to
  // how we configured our Sequelize User Model. If the user is created successfully, proceed to log the user in,
  // otherwise send back an error
  app.post("/api/createuser", function (req, res) {
    db.Participants.create(req.body
    ).then(function () {

      res.send(200);
    }).catch(function (err) {
      console.log(err);
      res.json(err);
      // res.status(422).json(err.errors[0].message);
    });
  });

  // findAll stories for participant 
  app.get("/api/blog", function (req, res) {
    db.Participants.findAll({

      include: [db.Blog, db.rec_food, db.rec_att, db.rec_eve]
    }).then(function (dbParticipants) {
      res.json(dbParticipants);
    });
  });

  app.get("/app/:id", function (req, res) {

  })



  app.post('/api/login',
    passport.authenticate('local', {
      successRedirect: "/",
      // failureFlash: true
    })
  );

  // Route for logging user out
  app.get("/logout", function (req, res) {
    req.logout();
    res.redirect("/");
  });


  // Route for getting some data about our user to be used client side
  app.get("/api/user_data", function (req, res) {
    if (!req.user) {
      // The user is not logged in, send back an empty object
      res.json({});
    }
    else {
      // Otherwise send back the user's email and id
      // Sending back a password, even a hashed password, isn't a good idea
      res.json({
        email: req.user.email,
        id: req.user.id
      });
    }
  });


}