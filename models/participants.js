var bcrypt = require("bcrypt-nodejs");



module.exports = function (sequelize, DataTypes) {
    var Participants = sequelize.define("Participants", {
        client_id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true

        },
        user_First_name: DataTypes.STRING,
        user_Last_name: DataTypes.STRING,
        user_email: DataTypes.STRING,
        user_bio_info: DataTypes.STRING(1000),
        user_pic_profile: DataTypes.STRING,
        user_password: DataTypes.STRING


    });


    Participants.prototype.validPassword = function (password) {

        console.log("checking valid password      " +password +"       " +this.user_password);
        return bcrypt.compareSync(password, this.user_password);
    };
    // Hooks are automatic methods that run during various phases of the User Model lifecycle
    // In this case, before a User is created, we will automatically hash their password
    Participants.hook("beforeCreate", function (user) {

        console.log(user.user_password);
        user.user_password = bcrypt.hashSync(user.user_password, bcrypt.genSaltSync(10));
    });

    Participants.associate = function (models) {
      
        // Users Blogs stories
        Participants.hasMany(models.Blog, {
            onDelete: "cascade"
        });

        //Users rec 
                Participants.belongsToMany(models.rec_food, {through:"participant_food",foreignKey:"ParticipantClientId",
            onDelete: "cascade"
        });

        Participants.hasMany(models.rec_att, {
            onDelete: "cascade"
        });
        Participants.hasMany(models.rec_eve, {
            onDelete: "cascade"
        });
        Participants.hasMany(models.rec_food, {
            onDelete: "cascade"
        });
        Participants.hasMany(models.user_location, {
            onDelete: "cascade"
        });
        // 
    };
    

    return Participants;
};


