import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/Provider/Auth_provider/Check_Box_State_provider.dart';
import 'package:task_app/Screens/DashBoard_Screen/DashBoard_Screen.dart';

class CheckboxDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final checkboxState = Provider.of<CheckboxState>(context);

    return AlertDialog(
      title: Text("Select Options"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CheckboxListTile(
              value: checkboxState.checkbox1,
              onChanged: (value) {
                checkboxState.toggleCheckbox1(value!);
              },
              title: Text("Terms and condition "),
              controlAffinity: ListTileControlAffinity.leading),
          CheckboxListTile(
              value: checkboxState.checkbox2,
              onChanged: (value) {
                checkboxState.toggleCheckbox2(value!);
              },
              title: Text("Terms and condition"),
              controlAffinity: ListTileControlAffinity.leading),
        ],
      ),
      actions: [
        if (checkboxState.isAnySelected)
          Center(
            child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.green[200]),
              onPressed: () {
                Navigator.pop(context); // Close the dialog
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => DashBoardscreen()));
              },
              child: Text("Continue"),
            ),
          ),
      ],
    );
  }
}
