import 'package:flutter/material.dart';
import 'package:medi_grow/guide/soil_preparation/soil_preparation_screen.dart'; // Import the SoilPreparationScreen
import 'package:medi_grow/guide/soil_preparation/video_links.dart'; // Import the VideoLinks widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(), // Change this to the desired home screen
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SoilPreparationScreen()), // Navigate to SoilPreparationScreen
                );
              },
              child: Text('Go to Soil Preparation Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VideoLinks()), // Navigate to VideoLinks widget
                );
              },
              child: const Text('Watch Video'),
            ),
          ],
        ),
      ),
    );
  }
}
