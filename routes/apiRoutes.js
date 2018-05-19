// Requiring our models
var db = require("../models");
var passport = require("../config/passport");
// Routes
// =============================================================
module.exports = function (app) {
  // HOME PAGE: getting users from database
  app.get("/api/getuser", isLoggedIn, function (req, res) {
    console.log(req.user);
    db.Participants.findAll({
      include: { model: db.Blog }
    }).then(function (dbParticipants) {
      res.render("index", { user: dbParticipants });
      console.log(dbParticipants)
    });
  });
  //USER PROFILE PAGE
  app.get("/api/getuser/:id", isLoggedIn, function (req, res) {
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
  //MYUSER PROFILE PAGE
  app.get("/api/myprofile/:id", isLoggedIn, function (req, res) {
    db.Participants.findOne({
      where: {
        client_id: req.params.id
      },
      include: [db.Blog, db.rec_food, db.rec_att, db.rec_eve]
    }).then(function (dbParticipants) {
      res.render("myUserProfile", { user: dbParticipants.dataValues, blog: dbParticipants.dataValues.Blogs, food: dbParticipants.dataValues.rec_foods, attractions: dbParticipants.dataValues.rec_atts, events: dbParticipants.dataValues.rec_eves });
      console.log(dbParticipants.dataValues.rec_eves[0])
    });
  });
  //USER BLOG PAGE
  app.get("/api/blog/:id",isLoggedIn, function (req, res) {
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

  //PERSONAL USER BLOG PAGE
  app.get("/api/blog/myblog/:id", isLoggedIn, function (req, res) {
    db.Participants.findOne({
      where: {
        client_id: req.params.id
      },
      include: [db.Blog, db.rec_food, db.rec_att, db.rec_eve]
    }).then(function (dbParticipants) {
      res.render("myBlog", { user: dbParticipants.dataValues, blog: dbParticipants.dataValues.Blogs, food: dbParticipants.dataValues.rec_foods, attractions: dbParticipants.dataValues.rec_atts, events: dbParticipants.dataValues.rec_eves });

      // console.log(dbParticipants.dataValues.Blogs[0].dataValues.user_StoryList)
    });
  });


//Creating new sotry and insirting to location and to blog tables LATER will need to update ParticipantClientId to ParticipantClientId:req.user
app.post("/api/blog/Story", isLoggedIn, function (req, res) {
  // console.log(req.body)
  db.Blog.create({
user_StoryList:req.body.user_StoryList,
user_title:req.body.user_title,
ParticipantClientId:req.user
// ParticipantClientId:req.user --- if logged in
  }),
  db.user_location.create({
    user_location:req.body.user_location,
    ParticipantClientId: req.user
    // ParticipantClientId:req.user --- if logged in
      })
  .then(function (data) {
    res.json(data)
    
  });
});
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
  app.get("/api/blog", isLoggedIn, function (req, res) {
    db.Participants.findAll({
      include: [db.Blog, db.rec_food, db.rec_att, db.rec_eve]
    }).then(function (dbParticipants) {
      res.json(dbParticipants);
    });
  });


app.get("/api/homepage/search", function (req, res) {
// console.log(req.query.newSearch_input)
  db.user_location.findAll({
    where :{
      user_location:req.query.newSearch_input
    },
    include:[db.Participants],
  }).then(function (dbUser_location) {
res.json( dbUser_location);
    // console.log(dbParticipants.dataValues.Blogs[0].dataValues.user_StoryList)
  });
});



  app.get("/app/:id", function (req, res) {
  })
  app.post('/api/login',
  passport.authenticate('local', { successRedirect: '/api/getuser',
                                   failureRedirect: '/login',
                                   failureFlash: true })
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
  function isLoggedIn(req, res, next) {
    if (req.isAuthenticated())
        return next();
    res.redirect('/login');
}


app.post("/api/create/food", function (req, res) {
  // console.log(req.body)
  db.rec_food.create({
    user_rec_food:req.body.newFood_input,
    ParticipantClientId: req.user
    // ParticipantClientId:req.user --- if logged in
      })
  .then(function (data) {
    res.json(data)
    
    
  });

});
//creating new post for attraction insert 
app.post("/api/create/attractions", function (req, res) {
  db.rec_att.create({
    user_rec_att:req.body.newAttractions_input,
    ParticipantClientId: req.user
    // ParticipantClientId:req.user --- if logged in
      })
  .then(function (data) {
    res.json(data)
    
    
  });
});
app.post('/api/event/remove/:id', function (req, res) {
  console.log(req.params.id)
  db.rec_eves.destroy({
    where:{
    user_rec_eve:req.param.id
  }
})
})

app.post("/api/create/events", function (req, res) {
  // console.log(req.body)rec_eve

  db.rec_food.create({
    user_rec_eve:req.body.newEvents_input,
    ParticipantClientId: req.user
    // ParticipantClientId:req.user --- if logged in
      })
  .then(function (data) {
    res.json(data)
    
    
  });

});

app.get("/api/getClientId", function(req, res) {
 

  res.json(req.user)

});
};