import 'package:flutter/material.dart';
import 'package:learn_provider_packet/widgets/weather_app_widget.dart';

void main() {
  runApp(
    const WeatherAppWithProviderPacket(),
  );
}

class WeatherAppWithProviderPacket extends StatelessWidget {
  const WeatherAppWithProviderPacket({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherApp(),
    );
  }
}
