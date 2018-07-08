import Sequelize from 'sequelize';
import sequelize from '../database';

const Post = sequelize.define('posts', {
  id: {
    type: Sequelize.INTEGER,
    allowNull: false,
    autoIncrement: true,
    primaryKey: true
  },

  title: {
    type: Sequelize.STRING,
    allowNull: false
  },

  url: {
    type: Sequelize.STRING,
    allowNull: false
  },

  authorId: {
    type: Sequelize.INTEGER,
    allowNull: false
  },

  votes: {
    type: Sequelize.INTEGER,
    allowNull: true
  }
}, {
  timestamps: false
});

export default Post;
