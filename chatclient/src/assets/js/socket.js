import io from 'socket.io-client'

let socket= io.connect('http://121.43.132.101:3000')

export default socket;