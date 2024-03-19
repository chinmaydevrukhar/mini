// lib/guide/soil_preparation/soil_preparation_screen.dart

import 'package:flutter/material.dart';
import 'package:medi_grow/guide/soil_preparation/video_links.dart'; // Adjust import path as per your project

class SoilPreparationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soil Preparation'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Soil Preparation',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Tips for soil preparation...',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Text(
              'Video Links',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            VideoLinks(), // Display video links for soil preparation
          ],
        ),
      ),
    );
  }
}
