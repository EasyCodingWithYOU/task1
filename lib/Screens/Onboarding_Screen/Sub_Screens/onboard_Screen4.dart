import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/Provider/Onboard_Provider/Time_Picker_Provider.dart';

class OnboardScreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final timeProvider = Provider.of<TimePickerProvider>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Display Selected Time
              Text(
                "Selected Time:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              Text(
                timeProvider.selectedTime.format(context),
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),

              // Button to Open Time Picker
              ElevatedButton(
                onPressed: () async {
                  // Show Time Picker Dialog
                  TimeOfDay? pickedTime = await showTimePicker(
                    context: context,
                    initialTime: timeProvider.selectedTime,
                  );

                  if (pickedTime != null) {
                    // Update the time in the provider
                    timeProvider.updateTime(pickedTime);
                  }
                },
                child: Text("Pick Time"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
