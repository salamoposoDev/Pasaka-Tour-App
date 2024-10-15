import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasaka_tour_app/common/widgets/navbar.dart';
import 'package:pasaka_tour_app/common/widgets/new_detail_screen.dart';
import 'package:pasaka_tour_app/common/widgets/test_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 806),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          home: Navbar(),
        );
      },
    );
  }
}
