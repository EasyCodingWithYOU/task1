// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';
// import 'package:task_app/Provider/Onboard_Provider/Onboard_Screen_2_provider.dart';
// import 'package:task_app/Utils/Colors/Colors_Name.dart';
// import 'package:task_app/Utils/List_Of_names.dart/List_Of_Names.dart';
// import 'package:task_app/Utils/Widgets/Custom_Top_Row.dart';

// class OnboardScreen2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final checkboxState = Provider.of<OnboardScreen2_provider>(context);

//     return Scaffold(
//       body: Column(
//         children: [
//           // Custom Top Row (Header)
//           Padding(
//             padding: EdgeInsets.symmetric(vertical: 25.0.h),
//             child: const CustomTopRow(
//               textValue:
//                   'Which of the following is the meain reason you want to change',
//             ),
//           ),
//           // Expanded widget to constrain the GridView's height
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.only(
//                   top: 16.0.h, bottom: 20.h, left: 100.w, right: 100.w),
//               child: GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 1, // Number of columns in the grid
//                   crossAxisSpacing: 100.0.w, // Horizontal spacing between items
//                   mainAxisSpacing: 80.0.h, // Vertical spacing between items
//                   childAspectRatio: 6, // Aspect ratio of the grid items
//                 ),
//                 itemCount: 9, // Total number of items in the grid
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       checkboxState.toggleCheckbox(
//                           index, !checkboxState.checkboxStates[index]);
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: bodyBackgroundColor,
//                         borderRadius:
//                             BorderRadius.circular(60.r), // Rounded corners
//                         border: Border.all(
//                           width: 4.w,
//                           color: checkboxState.checkboxStates[index]
//                               ? const Color.fromARGB(255, 142, 220, 146)
//                               : textBorderColor,
//                         ),
//                       ),
//                       child: Center(
//                         child: Text(
//                           names[index], // Assuming `names` is a list of strings
//                           style: TextStyle(
//                             color: checkboxState.checkboxStates[index]
//                                 ? Color.fromARGB(255, 142, 220, 146)
//                                 : Colors.white,
//                             fontSize: 80.sp,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// ===============
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Custom Top Row (Header)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0.h),
            child: const CustomTopRow(
              textValue:
                  'Which of the following is the main reason you want to change',
            ),
          ),
          // Containers in a vertical column
          SizedBox(
            height: 70.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 20.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //=============1
                    Row(
                      children: [
                        ////==============0
                        GestureDetector(
                          onTap: () {
                            checkboxState.toggleCheckbox(
                                0, !checkboxState.checkboxStates[0]);
                          },
                          child: Container(
                            height: 180.h,
                            // Height of each container
                            width: 600.w, // Full width of the screen
                            decoration: BoxDecoration(
                              color: bodyBackgroundColor,
                              borderRadius: BorderRadius.circular(
                                  50.r), // Rounded corners
                              border: Border.all(
                                width: 4.w,
                                color: checkboxState.checkboxStates[0]
                                    ? const Color.fromARGB(255, 142, 220, 146)
                                    : textBorderColor,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                names[0], // Display names from the list
                                style: TextStyle(
                                  color: checkboxState.checkboxStates[0]
                                      ? const Color.fromARGB(255, 142, 220, 146)
                                      : Colors.white,
                                  fontSize: 80.sp,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        ////==============1
                        GestureDetector(
                          onTap: () {
                            checkboxState.toggleCheckbox(
                                1, !checkboxState.checkboxStates[1]);
                          },
                          child: Container(
                            height: 180.h,
                            // Height of each container
                            width: 600.w,
                            decoration: BoxDecoration(
                              color: bodyBackgroundColor,
                              borderRadius: BorderRadius.circular(
                                  50.r), // Rounded corners
                              border: Border.all(
                                width: 4.w,
                                color: checkboxState.checkboxStates[1]
                                    ? const Color.fromARGB(255, 142, 220, 146)
                                    : textBorderColor,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                names[1], // Display names from the list
                                style: TextStyle(
                                  color: checkboxState.checkboxStates[1]
                                      ? const Color.fromARGB(255, 142, 220, 146)
                                      : Colors.white,
                                  fontSize: 80.sp,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ////==============2 row
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      children: [
                        ////==============3
                        GestureDetector(
                          onTap: () {
                            checkboxState.toggleCheckbox(
                                3, !checkboxState.checkboxStates[3]);
                          },
                          child: Container(
                            height: 180.h,
                            // Height of each container
                            width: 600.w, // Full width of the screen
                            decoration: BoxDecoration(
                              color: bodyBackgroundColor,
                              borderRadius: BorderRadius.circular(
                                  50.r), // Rounded corners
                              border: Border.all(
                                width: 4.w,
                                color: checkboxState.checkboxStates[3]
                                    ? const Color.fromARGB(255, 142, 220, 146)
                                    : textBorderColor,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                names[3], // Display names from the list
                                style: TextStyle(
                                  color: checkboxState.checkboxStates[3]
                                      ? const Color.fromARGB(255, 142, 220, 146)
                                      : Colors.white,
                                  fontSize: 80.sp,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        ////==============4
                        GestureDetector(
                          onTap: () {
                            checkboxState.toggleCheckbox(
                                4, !checkboxState.checkboxStates[4]);
                          },
                          child: Container(
                            height: 180.h,
                            // Height of each container
                            width: 600.w,
                            decoration: BoxDecoration(
                              color: bodyBackgroundColor,
                              borderRadius: BorderRadius.circular(
                                  50.r), // Rounded corners
                              border: Border.all(
                                width: 4.w,
                                color: checkboxState.checkboxStates[4]
                                    ? const Color.fromARGB(255, 142, 220, 146)
                                    : textBorderColor,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                names[4], // Display names from the list
                                style: TextStyle(
                                  color: checkboxState.checkboxStates[4]
                                      ? const Color.fromARGB(255, 142, 220, 146)
                                      : Colors.white,
                                  fontSize: 80.sp,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
//=========== end of row 2

//====================Gesture 5
                    SizedBox(
                      height: 80.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        checkboxState.toggleCheckbox(
                            5, !checkboxState.checkboxStates[5]);
                      },
                      child: Container(
                        height: 180.h,
                        decoration: BoxDecoration(
                          color: bodyBackgroundColor,
                          borderRadius:
                              BorderRadius.circular(50.r), // Rounded corners
                          border: Border.all(
                            width: 4.w,
                            color: checkboxState.checkboxStates[5]
                                ? const Color.fromARGB(255, 142, 220, 146)
                                : textBorderColor,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            names[5], // Display names from the list
                            style: TextStyle(
                              color: checkboxState.checkboxStates[5]
                                  ? const Color.fromARGB(255, 142, 220, 146)
                                  : Colors.white,
                              fontSize: 80.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    //============ gesture 6
                    SizedBox(
                      height: 80.h,
                    ),

                    GestureDetector(
                      onTap: () {
                        checkboxState.toggleCheckbox(
                            6, !checkboxState.checkboxStates[6]);
                      },
                      child: Container(
                        height: 180.h,
                        // width: 1000.w,
                        // Height of each container

                        decoration: BoxDecoration(
                          color: bodyBackgroundColor,
                          borderRadius:
                              BorderRadius.circular(50.r), // Rounded corners
                          border: Border.all(
                            width: 4.w,
                            color: checkboxState.checkboxStates[6]
                                ? const Color.fromARGB(255, 142, 220, 146)
                                : textBorderColor,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            names[6], // Display names from the list
                            style: TextStyle(
                              color: checkboxState.checkboxStates[6]
                                  ? const Color.fromARGB(255, 142, 220, 146)
                                  : Colors.white,
                              fontSize: 80.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
