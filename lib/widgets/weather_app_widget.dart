import 'package:flutter/material.dart';
import 'package:learn_provider_packet/widgets/hava_durumu_widget.dart';
import 'package:learn_provider_packet/widgets/location_widget.dart';
import 'package:learn_provider_packet/widgets/max_min_sicaklik_widget.dart';
import 'package:learn_provider_packet/widgets/shehir_sec.dart';
import 'package:learn_provider_packet/widgets/son_guncelleme_widget.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  String secilenShehir = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue.shade300,
        actions: [
          IconButton(
            onPressed: () async {
              secilenShehir = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShehirSecWidget(),
                ),
              );
              debugPrint("Secilen shehir: " + secilenShehir);
              setState(() {});
            },
            icon: const Icon(Icons.search, color: Colors.white),
          ),
          const Padding(padding: EdgeInsets.only(right: 10))
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: LocationWidget(
                secilenShehir: secilenShehir,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: SonGuncellemeWidget(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: HavaDurumuResimWidget(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(48.0),
            child: Center(
              child: MaxMinSicaklikWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
