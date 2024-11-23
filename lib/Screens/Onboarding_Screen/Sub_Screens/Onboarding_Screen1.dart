import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';
import 'package:task_app/Provider/Onboard_Provider/Onboard_provider.dart';
import 'package:task_app/Utils/Colors/Colors_Name.dart';
import 'package:task_app/Utils/Widgets/Custom_Top_Row.dart';

class OnboardScreen1 extends StatefulWidget {
  @immutable
  final PageController pageController;
  OnboardScreen1({required this.pageController});
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
                    labelStyle: TextStyle(color: textColor),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: textBorderColor, width: 3.w)),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: textBorderColor, width: 3.0),
                    ),
                  ),
                ),
                SizedBox(height: 56.h),

                // Middle Name Text Field
                TextField(
                  controller: _middleNameController,
                  decoration: InputDecoration(
                    labelText: 'Middle Name',
                    labelStyle: TextStyle(color: textColor),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: textBorderColor, width: 3.w)),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: textBorderColor, width: 3.0),
                    ),
                  ),
                ),
                SizedBox(height: 56.h),

                // Last Name Text Field
                TextField(
                  controller: _lastNameController,
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    labelStyle: TextStyle(color: textColor),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: textBorderColor, width: 3.w)),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: textBorderColor, width: 3.0),
                    ),
                  ),
                ),
                SizedBox(height: 36.h),

                // Submit Button
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: buttonForgroundColor,
                        backgroundColor: ButtonBackGroundColor),
                    onPressed: () {
                      // Display the entered data
                      String firstName = _firstNameController.text;
                      String middleName = _middleNameController.text;
                      String lastName = _lastNameController.text;

                      context.read<OnboardingProvider>().updatePage(1);

                      // Show a snack bar with the entered names
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content:
                                Text('Name: $firstName $middleName $lastName')),
                      );
                      widget.pageController!.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
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
