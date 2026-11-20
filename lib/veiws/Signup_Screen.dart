import 'package:flutter/material.dart';
import 'package:my_kharcha/constants/app_colors.dart';

class SignupScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("SignupScreen",
      style: TextStyle(
        color: AppColors.blackTxt,
      ),
      ),
    );
  }
}