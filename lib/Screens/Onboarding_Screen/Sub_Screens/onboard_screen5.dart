import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/Provider/Onboard_Provider/Date_picker_Provider.dart';

class OnboardScreen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dateProvider = Provider.of<DatePickerProvider>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Display Selected Date
              Text(
                "Selected Date:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              Text(
                "${dateProvider.selectedDate.toLocal()}".split(' ')[0],
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),

              // Button to Open Date Picker
              ElevatedButton(
                onPressed: () async {
                  // Show Date Picker Dialog
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: dateProvider.selectedDate,
                    firstDate: DateTime(2000), // Earliest selectable date
                    lastDate: DateTime(2100), // Latest selectable date
                  );

                  if (pickedDate != null) {
                    // Update the date in the provider
                    dateProvider.updateDate(pickedDate);
                  }
                },
                child: Text("Pick Date"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
