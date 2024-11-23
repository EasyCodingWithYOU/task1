import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/Screens/Auth_Screen/login_Screen.dart';
import 'package:task_app/Screens/Onboarding_Screen/List_Of_Screen.dart/List_Of_Screen.dart';
import 'package:task_app/Utils/Colors/Colors_Name.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            // PageView for onboarding screens
            PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: screens,
            ),

            // Dots indicator
            Positioned(
              bottom: 400.h,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  screens.length,
                  (index) => _buildDot(index),
                ),
              ),
            ),

            // Next or Get Started button
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ButtonBackGroundColor,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    if (_currentPage < screens.length - 1) {
                      // Move to the next screen
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      // On the last screen, exit onboarding
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    }
                  },
                  child: Text(
                    _currentPage == screens.length - 1 ? "Get Started" : "Next",
                    style: TextStyle(fontSize: 16, color: textColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to build dots for the bottom indicator
  Widget _buildDot(int index) {
    return Container(
      height: 10,
      width: _currentPage == index ? 20 : 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: _currentPage == index ? ButtonBackGroundColor : Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
