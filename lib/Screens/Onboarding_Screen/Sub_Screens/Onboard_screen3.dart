import 'package:flutter/material.dart';
import 'package:task_app/Utils/Widgets/Curriency_Dialog.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return CurrencyDialog();
        },
      );
    });
    return Scaffold(
      body: Center(
        child: TextButton(
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
      ),
    );
  }
}
