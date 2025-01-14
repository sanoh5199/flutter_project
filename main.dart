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

class EidDayScreen extends StatefulWidget {
  @override
  _EidDayScreenState createState() => _EidDayScreenState();
}

class _EidDayScreenState extends State<EidDayScreen> {
  // Define the Eid day
  final DateTime eidDate = DateTime(2025, 4, 22); // Example: 22nd April 2025
  final TextEditingController _nameController = TextEditingController();

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
                  'HAPPY Eid al-Fitr TO YOU',
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
                  'Please enter your name:',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                ),
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your name',
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    // Get the name entered by the user
                    final name = _nameController.text.trim();
                    if (name.isNotEmpty) {
                      // Navigate to the second screen and pass the name
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondScreen(
                            name: name,
                            message: 'Wishing you a blessed Eid!',
                          ),
                        ),
                      );
                    } else {
                      // Show a snackbar if the name is empty
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please enter your name.'),
                        ),
                      );
                    }
                  },
                  child: Text('Go to Second Page'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Use backgroundColor instead of primary
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

class SecondScreen extends StatelessWidget {
  final String name;
  final String message;

  // Constructor to receive the passed data
  SecondScreen({required this.name, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade300, Colors.blue.shade600],
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
                  'Message from First Page:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Hello $name!',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    // Navigate back to the first page
                    Navigator.pop(context);
                  },
                  child: Text('Go Back'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Use backgroundColor instead of primary
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
