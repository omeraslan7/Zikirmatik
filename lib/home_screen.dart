import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 5;

  void _inclementCounter() {
    _counter++;
    setState(() {});
  }

  void _resetCounter() {
    _counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191919),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  'https://raw.githubusercontent.com/ruwiss/flutter_dersleri/refs/heads/ders-16/assets/images/zikirmatik.png',
                  width: 150,
                ),
                Positioned(
                  top: 28,
                  right: 37,
                  child: _counterText(),
                ),
                Positioned(bottom: 12, child: _inclementButton()),
                Positioned(right: 38, top: 78, child: _resetButton())
              ],
            )
          ],
        ),
      ),
    );
  }

  GestureDetector _resetButton() {
    return GestureDetector(
      onTap: () => _resetCounter(),
      child: Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      ),
    );
  }

  GestureDetector _inclementButton() {
    return GestureDetector(
      onTap: () => _inclementCounter(),
      child: Container(
        width: 53,
        height: 53,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      ),
    );
  }

  Text _counterText() {
    return Text(
      _counter.toString(),
      style: const TextStyle(
          fontFamily: 'Digital7', fontSize: 25, color: Colors.white),
    );
  }
}
