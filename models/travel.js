
module.exports = function (sequelize, DataTypes) {
    var Participants = sequelize.define("Participants", {
        client_id: {
            type:DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
            
        },
        user_First_name: DataTypes.STRING,
        user_Last_name: DataTypes.STRING,
        user_email: DataTypes.STRING,
        user_bio_info:DataTypes.STRING(10000),
        user_pic_profile:DataTypes.STRING


    },
    {raw:false});



    Participants.associate = function(models) {
        // Associating Author with Posts
        // When an Author is deleted, also delete any associated Posts
        Participants.hasMany(models.Blog, {
          onDelete: "cascade"
        });
      };

    //   User.associate = function(models) {
    //     User.hasMany(models.location, {

    //     });
    //   };

    return Participants;
};


