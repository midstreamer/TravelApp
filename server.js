var express = require("express");
var bodyParser = require("body-parser");
var path = require("path");

// Sets up the Express App
// =============================================================
var app = express();
var PORT = process.env.PORT || 3320;
//var exphbs = require("express-handlebars");

var db = require("./models");

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

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