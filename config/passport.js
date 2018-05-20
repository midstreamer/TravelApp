var passport = require("passport");
var LocalStrategy = require("passport-local").Strategy;
const GoogleStrategy = require('passport-google-oauth20');
var FacebookStrategy = require('passport-facebook').Strategy;

var db = require("../models");

// Telling passport we want to use a Local Strategy. In other words, we want login with a username/email and password
passport.use(new LocalStrategy(
    // Our user will sign in using an email, rather than a "username"
    {
        usernameField: "email",
        passReqToCallback: true
    },
    function (req, email, password, done) {
        // When a user tries to sign in this code runs
        db.Participants.findOne({
            where: {
                user_email: email
            }
        }).then(function (dbUser) {
            // If there's no user with the given email
            if (!dbUser) {
                return done(null, false, req.flash("loginError", "User Not Found"));
            }
            // If there is a user with the given email, but the password the user gives us is incorrect
            else if (!dbUser.validPassword(password)) {
                return done(null, false, req.flash("loginError", "Password Incorrect"));
            }

            // If none of the above, return the user
            return done(null, dbUser);
        });
    }
));







passport.use(new GoogleStrategy({
    callbackURL: "/auth/google/callback",
    clientID: "1069128668253-50mqj8c4u7eqkhojr231cfchb6hg6215.apps.googleusercontent.com",
    clientSecret: "PmX-jt5vDYXZQpgcoerQJRpZ"
}, function (accessToken, refreshToken, profile, done) {


    
    // passport callback
    db.Participants.findOne({
        where: {
            google_id: profile.id
        }
    }).then(function (dbUser) {
        if (dbUser) {
            done(null, dbUser);
        } else {
            var accountEmail = "";
            for (var i = 0; i < profile.emails.length; i++) {
                if(profile.emails[i].type === "account"){
                    accountEmail = profile.emails[i].value
                }         
            }
            
            db.Participants.create({
                google_id: profile.id,
                user_First_Name: profile.name.givenName,
                user_Last_Name: profile.name.familyName,
                user_email: accountEmail,
                user_pic_profile: profile.photos[0].value

            }).then(function (newUser) {
                console.log(newUser.dataValues.id);
                console.log('new google user created', newUser);
                done(null, newUser);
            });
        }
    });

    // console.log(profile);
    // console.log(profile);
    
}));










// In order to help keep authentication state across HTTP requests,
// Sequelize needs to serialize and deserialize the user
// Just consider this part boilerplate needed to make it all work
passport.serializeUser(function (user, cb) {
    cb(null, user.client_id);
});

passport.deserializeUser(function (obj, cb) {

    cb(null, obj);
});

// Exporting our configured passport
module.exports = passport;