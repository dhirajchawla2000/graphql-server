import Sequelize from 'sequelize';
import sequelize from '../database';

const Author = sequelize.define('authors', {
  id: {
    type: Sequelize.INTEGER,
    allowNull: false,
    autoIncrement: true,
    primaryKey: true
  },

  uuid: {
    type: Sequelize.STRING,
    allowNull: false
  },

  firstName: {
    type: Sequelize.STRING,
    allowNull: false
  },

  lastName: {
    type: Sequelize.STRING,
    allowNull: false
  },

  createdAt: {
    type: Sequelize.DATE,
    allowNull: true
  },

  updatedAt: {
    type: Sequelize.DATE,
    allowNull: true
  }
}, {
  timestamps: false
});

export default Author;
