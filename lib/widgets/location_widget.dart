import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key, required this.secilenShehir});

  final String secilenShehir;

  @override
  Widget build(BuildContext context) {
    return Text(
      secilenShehir,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
