import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task_app/Provider/Onboard_Provider/Onboard_Screen_2_provider.dart';
import 'package:task_app/Utils/Colors/Colors_Name.dart';
import 'package:task_app/Utils/List_Of_names.dart/List_Of_Names.dart';
import 'package:task_app/Utils/Widgets/Custom_Top_Row.dart';

class OnboardScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final checkboxState = Provider.of<OnboardScreen2_provider>(context);

    return Scaffold(
      body: Column(
        children: [
          // Custom Top Row (Header)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0.h),
            child: const CustomTopRow(
              textValue:
                  'Which of the following is the meain reason you want to change',
            ),
          ),
          // Expanded widget to constrain the GridView's height
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  top: 16.0.h, bottom: 20.h, left: 50.w, right: 50.w),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, // Number of columns in the grid
                  crossAxisSpacing: 20.0.w, // Horizontal spacing between items
                  mainAxisSpacing: 20.0.h, // Vertical spacing between items
                  childAspectRatio: 5, // Aspect ratio of the grid items
                ),
                itemCount: 9, // Total number of items in the grid
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      checkboxState.toggleCheckbox(
                          index, !checkboxState.checkboxStates[index]);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: bodyBackgroundColor,
                        borderRadius:
                            BorderRadius.circular(20.r), // Rounded corners
                        border: Border.all(
                          width: 4.w,
                          color: checkboxState.checkboxStates[index]
                              ? const Color.fromARGB(255, 142, 220, 146)
                              : textBorderColor,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          names[index], // Assuming `names` is a list of strings
                          style: TextStyle(
                            color: checkboxState.checkboxStates[index]
                                ? Color.fromARGB(255, 142, 220, 146)
                                : Colors.white,
                            fontSize: 80.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
