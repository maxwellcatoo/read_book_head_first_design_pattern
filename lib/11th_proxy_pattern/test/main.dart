import 'dart:convert';
import 'dart:io';

// 使用编辑器运行main方法，客户端发送的消息无法发送给服务器
// 直接在终端环境下，使用dart执行改文件，就可以发送，，，不知道为啥
void main() async {
  // 创建服务器
  var server = await ServerSocket.bind(InternetAddress.loopbackIPv4, 8080, shared: true);
  server.forEach((c) {
    print("============服务器监听到客户端连接   ${c.remoteAddress}  ${c.remotePort}");
    print("============服务器监听到客户端连接   ${c.address}  ${c.port}");

    c.listen(
    (data) {
      final msg = utf8.decode(data);
      print("收到客户端消息   ${msg}");
      c.writeln("服务器向客户端返回的消息");
    }, onDone: () {
      print("客户端断开连接");
      c.close();
    }, onError: (err) {
      print("通讯错误  ${err}");
      c.close();
    });
  });

  // 创建客户端
  var client = await Socket.connect(InternetAddress.loopbackIPv4, 8080);
  print("======客户端连接成功:  remoteAddress: ${client.remoteAddress}  remotePort:  ${client.remotePort}");
  print("======客户端连接成功:  address: ${client.address}    port: ${client.port}");

  client.listen((event) {
    final msg = utf8.decode(event);
    print("======客户端收到服务器消息:  $msg");
  }, onDone: () {
    print("======服务端断开连接");
    client.close();
  }, onError: (err) {
    print("======发生错误: $err   断开连接");
    client.close();
  });

  client.write("客户端发送的消息");
  client.flush();
}
