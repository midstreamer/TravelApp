module.exports = function (sequelize, DataTypes) {
	var rec_food = sequelize.define("rec_food", {
        user_rec_food: DataTypes.STRING(10000),
    });
    
    rec_food.associate = function(models) {

    // linking food to participant on participantClientId key
    rec_food.belongsTo(models.Participants, {
        foreignKey: {
          allowNull: false
        }
      });
    };

    
	return rec_food;
};


