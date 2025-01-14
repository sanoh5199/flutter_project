import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eid Day App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: EidDayScreen(),
    );
  }
}

class EidDayScreen extends StatelessWidget {
  // Define the Eid day
  final DateTime eidDate = DateTime(2025, 4, 22); // Example: 22nd April 2025

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eid Day App'),
        backgroundColor: Colors.black, // AppBar color changed to black
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade300, Colors.blue.shade600], // Blue gradient background
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' HAPPY Eid al-Fitr TO YOU BROTHER 2025',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // May this EID bring us peace joy and happiness to you and your family
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '${eidDate.day}-${eidDate.month}-${eidDate.year}',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.black, // Black text for date
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Wishing you a blessed Eid!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87, // Dark grey text
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
