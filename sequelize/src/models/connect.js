import {Sequelize} from 'sequelize';

// tạo object sequelize để connect tới database
const sequelize = new Sequelize(
    "nodeJS47", // tên database
    "root", // tên username
    "123456", // password của user
    {
        host: "localhost",
        port: 3307,
        dialect: "mysql"
    }
);

export default sequelize;