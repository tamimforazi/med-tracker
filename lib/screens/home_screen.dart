import 'package:flutter/material.dart';

class MedTrackerHomePage extends StatefulWidget {
  @override
  _MedTrackerHomePageState createState() => _MedTrackerHomePageState();
}

class _MedTrackerHomePageState extends State<MedTrackerHomePage> {
  int numberOfMedications = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'MedTracker',
            style: TextStyle(
                color: Colors.green, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Make Everything Easy',
            style: TextStyle(fontSize: 28.0),
          ),
          SizedBox(height: 10.0),
          Text(
            'Number of Medications Added:',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 10.0),
          Text(
            '$numberOfMedications',
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Medication',
        child: Icon(Icons.add),
      ),
    );
  }
}
