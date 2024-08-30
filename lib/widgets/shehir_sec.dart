import 'package:flutter/material.dart';

class ShehirSecWidget extends StatefulWidget {
  ShehirSecWidget({super.key});

  @override
  State<ShehirSecWidget> createState() => _ShehirSecWidgetState();
}

class _ShehirSecWidgetState extends State<ShehirSecWidget> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose city"),
      ),
      body: Form(
          child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _textController,
                decoration: const InputDecoration(
                  labelText: 'City',
                  hintText: 'Choose city',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        strokeAlign: BorderSide.strokeAlignCenter,
                        width: 50,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context, _textController.text);
              setState(() {});
            },
            icon: const Icon(Icons.search),
          ),
        ],
      )),
    );
  }
}
