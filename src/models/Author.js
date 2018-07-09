import Sequelize from 'sequelize';
import sequelize from '../database';

const Author = sequelize.define('authors', {
  id: {
    type: Sequelize.INTEGER,
    allowNull: false,
    autoIncrement: true,
    primaryKey: true
  },

  firstName: {
    type: Sequelize.STRING,
    allowNull: false
  },

  lastName: {
    type: Sequelize.STRING,
    allowNull: false
  }
}, {
  timestamps: false
});

export default Author;
