module.exports = function (sequelize, DataTypes) {
	var user_location = sequelize.define("user_location", {


        user_location: DataTypes.STRING(100),
        location_code: DataTypes.STRING(100),

    },
    {
        timestamps: false
    });
    
    user_location.associate = function(models) {

    // linking food to participant on participantClientId key
    user_location.belongsTo(models.Participants, {
        foreignKey: {
          allowNull: false
        }
      });
      user_location.belongsToMany(models.rec_food,{ through:"location_food",foreignKey:"client_id_food"})
      
      user_location.hasMany(models.Blog,{
        foreignKey:"userLocationId"
      
      })
    };

    
	return user_location;
};


