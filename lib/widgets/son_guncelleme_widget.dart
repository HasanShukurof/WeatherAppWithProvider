import 'package:flutter/material.dart';

class SonGuncellemeWidget extends StatelessWidget {
  const SonGuncellemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Son Guncelleme:  ${const TimeOfDay(hour: 20, minute: 35).format(context)}",
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
