import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_kharcha/veiws/Splash_screen.dart';

import '../constants/app_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isProtected = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  FocusNode emailFocus = FocusNode();
  FocusNode passFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body:  SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 20,
                left: 20,
                right: 20,
              ),
              margin: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: AppColors.greenBg,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Image.asset(
                "assets/wallet.png",
                height: 35,
                width: 40,
                color: AppColors.appBg,
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back",
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColors.blackTxt,
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Log in to see your expenses on any device.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                      "Email",
                    style: TextStyle(
                      color: AppColors.greyTxt,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                 SizedBox(height: 10),
                 TextField(
                controller: emailController,
                textInputAction: TextInputAction.next,
                focusNode: emailFocus,
                onTap: () {
                  setState(() {});
                },
                onEditingComplete: () {
                  FocusScope.of(context).requestFocus(passFocus);
                },
                keyboardType: TextInputType.emailAddress,
                enableSuggestions: true,
                style: const TextStyle(color: AppColors.greyTxt),
                decoration: InputDecoration(
                  fillColor: AppColors.bottomNavBarBg,
                  filled: true,

                  hintText: "muneebsheikh@gmail.com",
                  hintStyle: const TextStyle(color: AppColors.greyTxt),
                  prefixIcon: const Icon(Icons.email_outlined),
                  prefixIconColor: Colors.blue,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: AppColors.greyTxt,
                      width: 2.0,
                    ),
                  ),
                  border: const OutlineInputBorder(),
                ),
              ),
                  SizedBox(height: 20),
                  Text(
                    "Password",
                    style: TextStyle(
                      color: AppColors.greyTxt
                    ),
                  ),
                  SizedBox(height: 10),
               TextField(
                obscureText: isProtected,
                focusNode: passFocus,
                autofillHints: const [AutofillHints.password],
                style: const TextStyle(color: AppColors.greyTxt),
                decoration: InputDecoration(
                  fillColor: AppColors.appBg,
                  filled: true,
                  hintText: "Password",
                  hintStyle: const TextStyle(color: AppColors.greyTxt),
                  prefixIcon: const Icon(Icons.lock_outline),
                  prefixIconColor: Colors.blue,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: AppColors.greyTxt,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: AppColors.greyTxt,
                      width: 2.0,
                    ),
                  ),
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      isProtected = !isProtected;
                      setState(() {});
                    },
                    icon: isProtected
                        ? const Icon(
                      Icons.visibility_off_outlined,
                      color: AppColors.greyTxt,
                    )
                        : const Icon(
                      Icons.visibility_outlined,
                      color: AppColors.greyTxt,
                    ),
                  ),
                ),
              ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topRight,
                   child:  Text(
                    "Forgot password?",
                    style: GoogleFonts.sarabun(
                        color: AppColors.greenBg,
                        fontSize: 15,
                        fontWeight: FontWeight.w800
                    ),
                  )
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.greenBg,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 18,
                          color: AppColors.bottomNavBarBg,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
