import 'package:flutter/material.dart';
import 'api/gauge_api.dart';

class GaugeTestPage extends StatefulWidget {
  const GaugeTestPage({super.key});

  @override
  State<GaugeTestPage> createState() => _GaugeTestPageState();
}

class _GaugeTestPageState extends State<GaugeTestPage> {
  final _api = GaugeApi();
  String _result = 'Press the button';

  Future<void> _loadGauge() async {
    setState(() => _result = 'Loading...');
    try {
      final resp = await _api.getGauge(1);
      setState(() {
        _result =
            'Gauge ${resp.id}: ${resp.name} (value: ${resp.value.toStringAsFixed(2)})';
      });
    } catch (e) {
      setState(() => _result = 'Error: $e');
    }
  }

  @override
  void dispose() {
    _api.shutdown();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('gRPC Gauge Test')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(_result, textAlign: TextAlign.center),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _loadGauge,
              child: const Text('Call GetGauge'),
            ),
          ],
        ),
      ),
    );
  }
}
