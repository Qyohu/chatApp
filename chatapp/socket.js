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

let socketio = {}

function getSocket(server) {
    socketio.io = require('socket.io')(server, {
        cors: {
            origin: "*",
            methods: ["GET", "POST"]
        }

    });

    let io = socketio.io
    io.on('connection', function (socket) {
        console.log(socket.id + "建立连接");
        //接收登录事件
        let conn = mysql.createConnection(connConfig)
        conn.connect();

        //登录
        socket.on('login', function (data) {
            //修改数据库登录信息(socketid,isonline
            let sql = `update user set socketid='${socket.id}',isonline='true' where id = ${data.id}`;
            conn.query(sql)
            //最新未接收的消息
            let sql2=`select * from chatlog join user on chatlog.from=user.username where isread = '${false}'`+' and chatlog.`to` = '+`'${data.username}'`;
            // let sql2=`select * from chatlog where isread = '${false}'`+' and `to` = '+`'${data.username}'`
            conn.query(sql2, (err, result)=> {
                socket.emit('unreadMsg',result)
            })
        })
        //登出
        socket.on('loginOut', function (data) {
            //修改数据库登录信息(socketid,isonline
            let sql = `update user set socketid=null,isonline=null where socketid = '${socket.id}'`;
            conn.query(sql)
        })
        //发送消息
        socket.on('sendMsg', function (msg) {
            //判断收消息的人是否在线
            let sql = `select * from user where username='${msg.to.username}' and isonline='true'`;
            conn.query(sql, (err, result) => {
                if (result.length > 0) {
                    //此人在线，直接发送消息
                    let toId = result[0].socketid;
                    socket.to(toId).emit(msg);
                    let str1 = 'insert into chatlog(`from`,`to`,content,time,isread) values' + 
                    `('${msg.from.username}','${msg.to.username}','${msg.content}','${msg.time}','true')`
                    conn.query(str1)
                } else {
                    // 此人不在线,直接存数据库
                    let str1 = 'insert into chatlog(`from`,`to`,content,time,isread) values'+
                    `('${msg.from.username}','${msg.to.username}','${msg.content}','${msg.time}','false')`
                    conn.query(str1)
                }
            })
        })
    });

}
socketio.getSocket = getSocket;

module.exports = socketio