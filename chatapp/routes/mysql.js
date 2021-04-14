let express = require('express')
let router = express.Router()
let mysql = require('mysql')

//mysql配置
const connConfig = {
    host: 'localhost',
    user: 'root',
    password: '123456',
    port: '3306',
    database: 'chatapp'
}
let conn = mysql.createConnection(connConfig)

//登录
router.post("/login", (req, res, next) => {
    let conn = mysql.createConnection(connConfig)
    conn.connect();

    const { username, password } = req.body;
    console.log(username, password)
    let sql = `select * from user where username='${username}' and password='${password}'`;
    conn.query(sql, (err, result) => {
        if (!err) {
            if (result.length === 1) {
                res.json({
                    code: 200,
                    msg: "登录成功",
                    data: result,
                })
            } else {
                res.json({
                    code: 201,
                    msg: "登录失败,用户名或密码错误",
                })
            }

        } else {
            res.json({
                code: 500,
                msg: "SQL执行错误",
                err
            })
        }
    })
    conn.end();

})
//注册
router.post("/register", (req, res, next) => {
    let conn = mysql.createConnection(connConfig)
    conn.connect();

    const { username, password } = req.body;
    console.log(username, password)
    let sql = `INSERT INTO user (username,password) VALUES ('${username}', '${password}')`;
    conn.query(sql, (err, result) => {
        console.log(result);
        if (!err) {
            if (result.affectedRows === 1) {
                res.json({
                    code: 200,
                    msg: "注册成功",
                    data: result,
                })
            } else {
                res.json({
                    code: 201,
                    msg: "注册失败",
                })
            }

        } else {
            res.json({
                code: 500,
                msg: "SQL执行错误",
                err
            })
        }
    })
    conn.end();

})

//获取所有用户
router.post("/getAllUser",(req, res, next) => {
    let conn = mysql.createConnection(connConfig)
    const { id } = req.body;
    conn.connect();
    let sql = `select * from user where id != ${id}`;
    conn.query(sql, (err, result) => {
        if (!err) {
            res.json({
                code: 200,
                msg: "查询成功",
                data: result,
            })
        } else {
            res.json({
                code: 500,
                msg: "SQL执行错误",
                err
            })
        }
    })
    conn.end();
})

//根据用户id查询用户
router.post("/getUserById",(req, res, next) => {
    let conn = mysql.createConnection(connConfig)
    const { id } = req.body;
    conn.connect();
    let sql = `select * from user where id = ${id}`;
    conn.query(sql, (err, result) => {
        if (!err) {
            res.json({
                code: 200,
                msg: "查询成功",
                data: result,
            })
        } else {
            res.json({
                code: 500,
                msg: "SQL执行错误",
                err
            })
        }
    })
    conn.end();
})
module.exports = router