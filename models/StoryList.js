module.exports = function (sequelize, DataTypes) {
	var Blog = sequelize.define("Blog", {
            user_StoryList: DataTypes.STRING
    });
    
    Blog.associate = function(models) {
    // We're saying that a Post should belong to an Author
    // A Post can't be created without an Author due to the foreign key constraint
    Blog.belongsTo(models.Participants, {
      foreignKey: {
        allowNull: false
      }
    });
  };

    
	return Blog;
};


