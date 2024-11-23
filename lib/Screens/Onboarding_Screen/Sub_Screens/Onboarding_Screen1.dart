import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:task_app/Utils/Colors/Colors_Name.dart';
import 'package:task_app/Utils/Lottie_Names/Lottie_Names.dart';
import 'package:task_app/Utils/Widgets/Custom_Top_Row.dart';

class OnboardScreen1 extends StatefulWidget {
  @override
  _OnboardScreen1State createState() => _OnboardScreen1State();
}

class _OnboardScreen1State extends State<OnboardScreen1> {
  // Controllers for the text fields
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(36.0.h),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.0.h),
                  child: const CustomTopRow(
                    textValue: 'What should we call you',
                  ),
                ),
                // First Name Text Field
                SizedBox(
                  height: 300.h,
                ),
                TextField(
                  controller: _firstNameController,
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 56.h),

                // Middle Name Text Field
                TextField(
                  controller: _middleNameController,
                  decoration: InputDecoration(
                    labelText: 'Middle Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 56.h),

                // Last Name Text Field
                TextField(
                  controller: _lastNameController,
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 36.h),

                // Submit Button
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ButtonBackGroundColor),
                    onPressed: () {
                      // Display the entered data
                      String firstName = _firstNameController.text;
                      String middleName = _middleNameController.text;
                      String lastName = _lastNameController.text;

                      // Show a snack bar with the entered names
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content:
                                Text('Name: $firstName $middleName $lastName')),
                      );
                    },
                    child: Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the controllers when the widget is disposed
    _firstNameController.dispose();
    _middleNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }
}
