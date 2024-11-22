import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_app/Provider/Auth_provider/Check_Box_State_provider.dart';
import 'package:task_app/Provider/Onboard_Provider/Currency_Selection_Provider.dart';
import 'package:task_app/Provider/Onboard_Provider/Date_picker_Provider.dart';
import 'package:task_app/Provider/Onboard_Provider/Onboard_Screen_2_provider.dart';
import 'package:task_app/Provider/Onboard_Provider/Time_Picker_Provider.dart';
import 'package:task_app/Screens/DashBoard_Screen/DashBoard_Screen.dart';
import 'package:task_app/Screens/Onboarding_Screen/Onboarding_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 2560),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => CheckboxState()),
            ChangeNotifierProvider(create: (_) => OnboardScreen2_provider()),
            ChangeNotifierProvider(create: (_) => CurrencySelectionProvider()),
            ChangeNotifierProvider(create: (_) => TimePickerProvider()),
            ChangeNotifierProvider(create: (_) => DatePickerProvider()),
          ],
          child: MaterialApp(
            theme: ThemeData(scaffoldBackgroundColor: Colors.white),
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
          ),
        );
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkFirstTime();
  }

  Future<void> checkFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool('isFirstTime') ?? true;

    if (isFirstTime) {
      // Set the flag to false as the user has seen the onboarding screen
      await prefs.setBool('isFirstTime', false);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
    } else {
      // await prefs.setBool('isFirstTime', true);
      Navigator.pushReplacement(
          // context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
          context,
          MaterialPageRoute(builder: (context) => DashBoardscreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
