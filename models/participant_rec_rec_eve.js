
module.exports = function (sequelize, DataTypes) {
	var rec_eve = sequelize.define("rec_eve", {
        user_rec_eve: DataTypes.STRING(10000),
    });
    
    rec_eve.associate = function(models) {

    // linking food to participant on participantClientId key
    rec_eve.belongsTo(models.Participants, {
        foreignKey: {
          allowNull: false
        }
      });
    };

    
	return rec_eve;
};

