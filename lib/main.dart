import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ColorPage();
  }
}

class ColorPage extends StatefulWidget {
  const ColorPage({super.key});

  @override
  State<ColorPage> createState() => _MyAppState();
}

class _MyAppState extends State<ColorPage> {
  Color _containerColor = Colors.yellow; // warna awal
  List<Color> _listColor = [
    Colors.yellow,
    Colors.red,
    Colors.green
  ]; // daftar warna yang akan tampil
  int _currentColor = 0; // inisilisasi nilai awal

  void _changeColor() {
    setState(() {
      _currentColor = (_currentColor + 1) % _listColor.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Color App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: _listColor[_currentColor],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  _changeColor();
                },
                child: Text("Ganti Warna"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
