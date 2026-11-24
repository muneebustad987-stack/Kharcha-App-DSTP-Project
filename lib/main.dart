import 'package:flutter/material.dart';
import 'package:my_kharcha/veiws/Splash_screen.dart';
import 'package:my_kharcha/veiws/category_screen.dart';
// import 'package:my_kharcha/veiws/monthly_budget.dart';
// import 'package:my_kharcha/veiws/Splash_screen.dart';
// import 'package:my_kharcha/veiws/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const SplashScreen(),
    );
  }
}
