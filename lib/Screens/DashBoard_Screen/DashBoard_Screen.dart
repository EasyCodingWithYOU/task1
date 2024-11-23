import 'package:flutter/material.dart';
import 'package:task_app/Utils/Colors/Colors_Name.dart';

class DashBoardscreen extends StatefulWidget {
  const DashBoardscreen({super.key});

  @override
  State<DashBoardscreen> createState() => _DashBoardscreenState();
}

class _DashBoardscreenState extends State<DashBoardscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Dashboard',
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
