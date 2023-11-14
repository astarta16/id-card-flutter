import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: CardMain(),
));

class CardMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 63, 62, 62),
      appBar: AppBar(
        title: Text("Astarta's ID project"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 47, 46, 46),
        elevation: 0.0,
      ),
    );
  }
}