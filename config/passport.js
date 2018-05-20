var passport = require("passport");
var LocalStrategy = require("passport-local").Strategy;
const GoogleStrategy = require('passport-google-oauth20');

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
    // db.user.findOne({
    //     where: {
    //         googleID: profile.id
    //     }
    // }).then(function (currentUser) {
    //     if (currentUser) {
    //         console.log(currentUser.dataValues.id);
    //         console.log('That user already exists');
    //         done(null, currentUser);
    //     } else {
    //         db.user.create({
    //             googleID: profile.id,
    //             firstName: profile.name.givenName,
    //             lastName: profile.name.familyName
    //         }).then(function (newUser) {
    //             console.log(newUser.dataValues.id);
    //             console.log('new google user created', newUser);
    //             done(null, newUser);
    //         });
    //     }
    // });

    console.log(profile);
    // console.log(profile);
    
}));



// var fbStrategy = configAuth.facebookAuth;
// fbStrategy.passReqToCallback = true;  // allows us to pass in the req from our route (lets us check if a user is logged in or not)
// passport.use(new FacebookStrategy(fbStrategy,
// function(req, token, refreshToken, profile, done) {

//     // asynchronous
//     process.nextTick(function() {

//         // check if the user is already logged in
//         if (!req.user) {


//             db.Participants.findOne({
//                 where: {
//                     'facebook_id': profile.id
//                 }
//             }).then(function (dbUser) {


//                 if(dbUser){

//                     return done(null, user);

//                 }
//                 else{

//                     var NewUser = {
//                         user_First_name: profile.name.givenName,
//                         user_Last_name: profile.name.familyName,
//                         user_email: (profile.emails[0].value || '').toLowerCase(),
//                         user_bio_info: participant_blog,
//                         user_pic_profile: participant_pic,
//                         user_password: participant_password
//                     }

//                 }
//                 // If there's no user with the given email
//                 if (!dbUser) {
//                     return done(null, false, req.flash("loginError", "User Not Found"));
//                 }
//                 // If there is a user with the given email, but the password the user gives us is incorrect
//                 else if (!dbUser.validPassword(password)) {
//                     return done(null, false, req.flash("loginError", "Password Incorrect"));
//                 }
    
//                 // If none of the above, return the user
//                 return done(null, dbUser);
//             });

//             User.findOne({ 'facebook.id' : profile.id }, function(err, user) {
//                 if (err)
//                     return done(err);

//                 if (user) {

//                     // if there is a user id already but no token (user was linked at one point and then removed)
//                     if (!user.facebook.token) {
//                         user.facebook.token = token;
//                         user.facebook.name  = profile.name.givenName + ' ' + profile.name.familyName;
//                         user.facebook.email = (profile.emails[0].value || '').toLowerCase();

//                         user.save(function(err) {
//                             if (err)
//                                 return done(err);
                                
//                             return done(null, user);
//                         });
//                     }

//                     return done(null, user); // user found, return that user
//                 } else {
//                     // if there is no user, create them
//                     var newUser            = new User();

//                     newUser.facebook.id    = profile.id;
//                     newUser.facebook.token = token;
//                     newUser.facebook.name  = profile.name.givenName + ' ' + profile.name.familyName;
//                     newUser.facebook.email = (profile.emails[0].value || '').toLowerCase();

//                     newUser.save(function(err) {
//                         if (err)
//                             return done(err);
                            
//                         return done(null, newUser);
//                     });
//                 }
//             });

//         } else {
//             // user already exists and is logged in, we have to link accounts
//             var user            = req.user; // pull the user out of the session

//             user.facebook.id    = profile.id;
//             user.facebook.token = token;
//             user.facebook.name  = profile.name.givenName + ' ' + profile.name.familyName;
//             user.facebook.email = (profile.emails[0].value || '').toLowerCase();

//             user.save(function(err) {
//                 if (err)
//                     return done(err);
                    
//                 return done(null, user);
//             });

//         }
//     });

// }));

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