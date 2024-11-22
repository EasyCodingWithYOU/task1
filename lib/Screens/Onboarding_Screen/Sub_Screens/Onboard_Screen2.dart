// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';
// import 'package:task_app/Provider/Onboard_Provider/Onboard_Screen_2_provider.dart';
// import 'package:task_app/Utils/List_Of_names.dart/List_Of_Names.dart';

// class OnboardScreen2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final checkboxState = Provider.of<OnboardScreen2_provider>(context);

//     return Scaffold(
//       body: GridView.builder(
//         padding: EdgeInsets.all(16.0.h),
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 1, // 2 boxes per row
//           crossAxisSpacing: 16.0.h,
//           mainAxisSpacing: 16.0.w,
//         ),
//         itemCount: 9,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               checkboxState.toggleCheckbox(
//                   index, !checkboxState.checkboxStates[index]);
//             },
//             child: Container(

//               decoration: BoxDecoration(
//                 color: checkboxState.checkboxStates[index]
//                     ? Colors.green
//                     : Colors.white,
//                 borderRadius: BorderRadius.circular(90.r),
//                 border: Border.all(color: Colors.grey),
//               ),
//               child: Center(
//                 child: Text(
//                   names[index],
//                   style: TextStyle(
//                     color: checkboxState.checkboxStates[index]
//                         ? Colors.white
//                         : Colors.black,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
// ==============
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task_app/Provider/Onboard_Provider/Onboard_Screen_2_provider.dart';
import 'package:task_app/Utils/List_Of_names.dart/List_Of_Names.dart';

class OnboardScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final checkboxState = Provider.of<OnboardScreen2_provider>(context);

    return Scaffold(
      body: GridView.builder(
        padding:
            EdgeInsets.only(top: 16.0.h, bottom: 20.h, left: 50.w, right: 50.w),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 86.0.h,
          mainAxisSpacing: 100.0.w,
          childAspectRatio: 6, // Ensure the boxes are square
        ),
        itemCount: 9, // Total number of items
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              checkboxState.toggleCheckbox(
                  index, !checkboxState.checkboxStates[index]);
            },
            child: Container(
              decoration: BoxDecoration(
                color: checkboxState.checkboxStates[index]
                    ? Colors.green
                    : Colors.white,
                borderRadius:
                    BorderRadius.circular(46.r), // Adjust corner radius
                border: Border.all(color: Colors.grey),
              ),
              child: Center(
                child: Text(
                  names[index], // Assuming `names` is a list of strings
                  style: TextStyle(
                    color: checkboxState.checkboxStates[index]
                        ? Colors.white
                        : Colors.black,
                    fontSize: 60.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
