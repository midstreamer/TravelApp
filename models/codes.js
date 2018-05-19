module.exports = function (sequelize, DataTypes) {
	var location_Name_Code = sequelize.define("location_Name_Code", {
        location_name: DataTypes.STRING(10000),
        location_codes: DataTypes.STRING(10000),
    });
    
    // location_codes.associate = function(models) {

    // // linking food to participant on participantClientId key
    // location_codes.belongsTo(models.Participants, {
    //     foreignKey: {
    //       allowNull: false
    //     }
    //   });
    //   user_location.belongsToMany(models.rec_food,{ through:"location_food",foreignKey:"client_id_food"})
      
    // };

    
	return location_Name_Code;
};


