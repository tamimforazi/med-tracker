import 'package:flutter/material.dart';

class MedicationCard extends StatelessWidget {
  final String medicationName;
  final String dosage;
  final String frequency;

  const MedicationCard({
    Key? key,
    required this.medicationName,
    required this.dosage,
    required this.frequency,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              medicationName,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Dosage: $dosage',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 4.0),
            Text(
              'Frequency: $frequency',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
