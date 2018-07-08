import Sequelize from 'sequelize';

const sequelize = new Sequelize('graphql_ex', 'root', 'mysql', {
  host: 'localhost',
  dialect: 'mysql',
  port: 3306
});

export default sequelize;
