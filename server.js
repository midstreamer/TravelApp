var express = require("express");
var bodyParser = require("body-parser");
var path = require("path");
var session = require("express-session");

// Requiring passport as we've configured it
var passport = require("./config/passport");

var flash    = require('connect-flash');
var db = require("./models");
var cookieParser = require("cookie-parser");


// Sets up the Express App
// =============================================================
var app = express();
var PORT = process.env.PORT || 3331;
//var exphbs = require("express-handlebars");


app.use(cookieParser('secret cat'));
app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json());
app.use(session({
    secret: 'secret cat',
    resave: true,
    saveUninitialized: true
}));

app.use(passport.initialize());
app.use(passport.session());
app.use(flash());

app.use(function(err, req, res, next) {
  console.log(err);
});




// Static directory
app.use(express.static(__dirname +"/public/assets"));




var exphbs = require("express-handlebars");

app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

require("./routes/apiRoutes.js")(app);
require("./routes/htmlRoutes.js")(app);



// =======================================================

db.sequelize.sync().then(function() {
  app.listen(process.env.PORT||PORT, function() {
    console.log("Server listening on: http://localhost:" + PORT);
  });

});