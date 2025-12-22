import 'package:grpc/grpc.dart';
import '../generated/gauge/gauge_service.pbgrpc.dart';

class GaugeApi {
  late final ClientChannel _channel;
  late final GaugeServiceClient _client;

  GaugeApi({
    String host = '127.0.0.1', //
    int port = 50051,
  }) {
    _channel = ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    _client = GaugeServiceClient(_channel);
  }

  Future<GaugeResponse> getGauge(int id) async {
    final req = GaugeRequest()..id = id;
    final resp = await _client.getGauge(req);
    return resp;
  }

  Future<void> shutdown() async {
    await _channel.shutdown();
  }
}
