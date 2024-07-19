import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'ui/home.dart';
import 'config/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.mainColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Home(),
      );
    });
  }
}
