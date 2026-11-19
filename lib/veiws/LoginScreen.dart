import 'package:flutter/material.dart';
import 'package:my_kharcha/veiws/Splash_screen.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {
          var route = MaterialPageRoute(builder: (_) => const SplashScreen());

          Navigator.pop(context, route);
        },
        child: Icon(Icons.arrow_back, size: 20, color: Colors.black),
      ),
    );
  }
}
