module.exports = function (sequelize, DataTypes) {
	var rec_att = sequelize.define("rec_att", {
        user_rec_att: DataTypes.STRING(10000),
    });
    
    rec_att.associate = function(models) {

    // linking food to participant on participantClientId key
    rec_att.belongsTo(models.Participants, {
        foreignKey: {
          allowNull: false
        }
      });
    };

    
	return rec_att;
};


