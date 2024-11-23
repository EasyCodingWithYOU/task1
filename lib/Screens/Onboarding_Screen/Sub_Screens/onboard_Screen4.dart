import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task_app/Provider/Onboard_Provider/Time_Picker_Provider.dart';
import 'package:task_app/Utils/Colors/Colors_Name.dart';
import 'package:task_app/Utils/Widgets/Custom_Top_Row.dart';

class OnboardScreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final timeProvider = Provider.of<TimePickerProvider>(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0.h),
                child: const CustomTopRow(
                  textValue: 'Select Your Time',
                ),
              ),
              SizedBox(
                height: 400.h,
              ),
              // Display Selected Time
              Text(
                "Selected Time:",
                style: TextStyle(
                    fontSize: 18,
                    color: textColor,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              Text(
                timeProvider.selectedTime.format(context),
                style: TextStyle(
                    fontSize: 24,
                    color: textColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),

              // Button to Open Time Picker
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: buttonForgroundColor,
                    backgroundColor: ButtonBackGroundColor),
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
