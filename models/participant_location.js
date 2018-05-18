module.exports = function (sequelize, DataTypes) {
	var user_location = sequelize.define("user_location", {
        user_location: DataTypes.STRING(10000),
        user_title:DataTypes.STRING(10000)
    });
    
    user_location.associate = function(models) {

    // linking food to participant on participantClientId key
    user_location.belongsTo(models.Participants, {
        foreignKey: {
          allowNull: false
        }
      });
      user_location.belongsToMany(models.rec_food,{ through:"location_food",foreignKey:"client_id_food"})
      
    };

    
	return user_location;
};


