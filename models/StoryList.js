module.exports = function (sequelize, DataTypes) {
  var Blog = sequelize.define("Blog", {
          user_StoryList: DataTypes.STRING(100),
          user_title:DataTypes.STRING(100),
          ParticipantClientId: DataTypes.INTEGER

  });
  
  Blog.associate = function(models) {
  Blog.belongsTo(models.Participants, {
    foreignKey: {
      allowNull: false
    }
  });
};
  
  return Blog;
};


