import 'dart:async';
import 'dart:io';

import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketService {
  final List<String> pairs;
  late WebSocketChannel _channel;
  StreamController<String> _controller = StreamController.broadcast();
  WebSocketService( this.pairs){
   _connect();
  }

  void _connect() {
    final streams = pairs.map((pair) => "${pair.toLowerCase()}@aggTrade").join("/");
    final url = 'wss://fstream.binance.com/stream?streams=$streams';

    _channel = WebSocketChannel.connect(Uri.parse(url));

    _channel.stream.listen(
      (data) => _controller.add(data),
      onDone: _reconnect,
      onError: (error) => _reconnect(),
    );
  }
  Stream<String> get stream => _controller.stream;

  void _reconnect() {
    Future.delayed(Duration(seconds: 3), () => _connect());
  }

  void dispose() {
    _channel.sink.close();
    _controller.close();
  }

}
