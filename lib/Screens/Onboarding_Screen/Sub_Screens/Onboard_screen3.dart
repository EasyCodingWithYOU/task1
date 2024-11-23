import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/Utils/Widgets/Curriency_Dialog.dart';
import 'package:task_app/Utils/Widgets/Custom_Top_Row.dart';
import 'package:task_app/Utils/Widgets/Rounded_Icon_Button.dart';

class OnboardScreen3 extends StatefulWidget {
  const OnboardScreen3({super.key});

  @override
  State<OnboardScreen3> createState() => _OnboardScreen3State();
}

class _OnboardScreen3State extends State<OnboardScreen3> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return CurrencyDialog();
    //     },
    //   );
    // });
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25.0.h, horizontal: 20.w),
              child: const CustomTopRow(
                textValue: 'What currency do you preffer',
              ),
            ),
            SizedBox(
              height: 700.h,
            ),
            TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CurrencyDialog();
                    },
                  );
                },
                child: Text(
                  "Do you want to Select Currency tap on me",
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
