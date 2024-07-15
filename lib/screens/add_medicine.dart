import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController medicineNameController = TextEditingController();
    TextEditingController medicineTypeController = TextEditingController();
    TimeOfDay selectedTime = TimeOfDay.now();

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Medication'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: medicineNameController,
              decoration: InputDecoration(labelText: 'Medicine Name'),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: medicineTypeController,
              decoration: InputDecoration(labelText: 'Medicine Type'),
            ),
            SizedBox(height: 10.0),
            ListTile(
              title: Text('Set Notification Time'),
              subtitle: Text('${selectedTime.hour}:${selectedTime.minute}'),
              onTap: () async {
                selectedTime = await showTimePicker(
                      context: context,
                      initialTime: selectedTime,
                    ) ??
                    selectedTime;
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text('Save Medication'),
            ),
          ],
        ),
      ),
    );
  }
}
