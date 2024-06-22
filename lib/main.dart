import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ColorGrid(),
        ),
      ),
    );
  }
}

class ColorGrid extends StatelessWidget {
  final List<Color> colors = [
  Colors.greenAccent, 
  Colors.orangeAccent,
  Colors.greenAccent,
  Colors.orangeAccent,
  Color.fromARGB(255, 199, 124, 124),
  Colors.blue

  ];

  final List<double> widths = [100, 80, 60, 90, 110, 50];
  final List<double> heights = [90, 60, 50, 70, 100, 40];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 13.0,
              runSpacing: 10.0,
              children: colors.sublist(0, 4).asMap().entries.map((entry) {
                int index = entry.key;
                Color color = entry.value;
                double width = widths[index];
                double height = heights[index];
                return Container(
                  width: width,
                  height: height,
                  color: color,
                );
              }).toList(),
            ),
            SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'NANDA ROSENATU FAHIRA',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10), // Berikan jarak antara kolom warna dan teks
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 13.0,
              runSpacing: 10.0,
              children: colors.sublist(4).asMap().entries.map((entry) {
                int index = entry.key + 4; // Untuk memulai indeks dari 4
                Color color = entry.value;
                double width = widths[index];
                double height = heights[index];
                return Container(
                  width: width,
                  height: height,
                  color: color,
                );
              }).toList(),
            ),
          ],
        ),
      ],
    );
  }
}