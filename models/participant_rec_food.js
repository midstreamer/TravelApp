module.exports = function (sequelize, DataTypes) {
	var rec_food = sequelize.define("rec_food", {
        user_rec_food: DataTypes.STRING(100),
    },
    {
        timestamps: false
    });
    
    rec_food.associate = function(models) {

    // linking food to participant on participantClientId key
    rec_food.belongsTo(models.Participants, {
        foreignKey: {
          allowNull: false
        }
      });

      rec_food.belongsToMany(models.user_location,{through:"location_food",foreignKey:"ParticipantClientId"}
    
      )};
    
	return rec_food;
};


