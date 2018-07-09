import Sequelize from 'sequelize';
import sequelize from '../database';

const Comment = sequelize.define('comments', {
  id: {
    type: Sequelize.INTEGER,
    allowNull: false,
    autoIncrement: true,
    primaryKey: true
  },

  message: {
    type: Sequelize.STRING,
    allowNull: false
  },

  postId: {
    type: Sequelize.INTEGER,
    allowNull: false
  }
});

export default Comment;