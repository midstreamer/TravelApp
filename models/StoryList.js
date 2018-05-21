module.exports = function (sequelize, DataTypes) {
  var Blog = sequelize.define("Blog", {
          user_StoryList: DataTypes.STRING(1000),
          user_title:DataTypes.STRING(1000),
          ParticipantClientId: DataTypes.INTEGER

  });
  
  Blog.associate = function(models) {
  Blog.belongsTo(models.Participants, {
    foreignKey: {
      allowNull: false
    }
  });
  Blog.belongsTo(models.user_location,{
    foreignKey:"userLocationId"
  })
};
  
  return Blog;
};


