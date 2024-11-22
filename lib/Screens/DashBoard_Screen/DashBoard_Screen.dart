import 'package:flutter/material.dart';

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
        child: Text('Dashboard'),
      ),
    );
  }
}
