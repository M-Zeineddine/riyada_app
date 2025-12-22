import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grpc/grpc.dart';

final grpcChannelProvider = Provider<ClientChannel>((ref) {
  // Emulator uses 10.0.2.2 to reach your Windows host machine.
  // On Raspberry Pi you’ll change this to the backend machine IP.
  const host = '10.0.2.2';
  const port = 50051;

  final channel = ClientChannel(
    host,
    port: port,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );

  ref.onDispose(() => channel.shutdown());
  return channel;
});
