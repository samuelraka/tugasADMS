import { Sequelize } from "sequelize";

const db = new Sequelize('rumahkrs','root','', {
    host: 'localhost',
    dialect: 'mysql'
});

export default db;
(async()=>{
    await db.sync();
})();