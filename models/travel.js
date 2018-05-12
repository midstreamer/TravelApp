
module.exports = function (sequelize, DataTypes) {
	var User = sequelize.define("Participants", {
            user_First_name: DataTypes.STRING,
            user_Last_name: DataTypes.STRING,
            user_email: DataTypes.STRING,
            user_bio_info: DataTypes.STRING,

	});
	return User;
};


