import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/Provider/Auth_provider/Check_Box_State_provider.dart';
import 'package:task_app/Screens/DashBoard_Screen/DashBoard_Screen.dart';
import 'package:task_app/Utils/Colors/Colors_Name.dart';

class CheckboxDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final checkboxState = Provider.of<CheckboxState>(context);

    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 93, 129, 150),
      title: Text(
        "Select Options",
        style: TextStyle(color: textColor),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CheckboxListTile(
              // checkColor: buttonForgroundColor,
              activeColor: ButtonBackGroundColor,
              // fillColor: WidgetStatePropertyAll(ButtonBackGroundColor),
              value: checkboxState.checkbox1,
              onChanged: (value) {
                checkboxState.toggleCheckbox1(value!);
              },
              title: Text(
                "Terms and condition ",
                style: TextStyle(color: textColor),
              ),
              controlAffinity: ListTileControlAffinity.leading),
          CheckboxListTile(
              activeColor: ButtonBackGroundColor,
              value: checkboxState.checkbox2,
              onChanged: (value) {
                checkboxState.toggleCheckbox2(value!);
              },
              title: Text(
                "Terms and condition",
                style: TextStyle(color: textColor),
              ),
              controlAffinity: ListTileControlAffinity.leading),
        ],
      ),
      actions: [
        if (checkboxState.isAnySelected)
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: ButtonBackGroundColor),
              onPressed: () {
                Navigator.pop(context); // Close the dialog
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => DashBoardscreen()));
              },
              child: Text(
                "Continue",
                style: TextStyle(color: textColor),
              ),
            ),
          ),
      ],
    );
  }
}
