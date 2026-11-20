import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_kharcha/veiws/Signup_Screen.dart';
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
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    style: TextStyle(color: Colors.grey, fontSize: 16),
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
                  Text("Password", style: TextStyle(color: AppColors.greyTxt)),
                  SizedBox(height: 10),
                  TextField(
                    obscureText: isProtected,
                    focusNode: passFocus,
                    autofillHints: const [AutofillHints.password],
                    style: const TextStyle(color: AppColors.greyTxt),
                    decoration: InputDecoration(
                      fillColor: AppColors.appBg,
                      filled: true,
                      hintText: "Enter Your Password",
                      hintStyle: const TextStyle(color: AppColors.greyTxt),
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
                  TextButton(onPressed: (){},
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Forgot password?",
                          style: GoogleFonts.sarabun(
                            color: AppColors.greenBg,
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ) ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.greenBg,
                      ),
                      onPressed: () async {
                        isLoading = true;
                        setState(() {});
                        await Future.delayed(Duration(seconds: 3));


                        isLoading = false;
                        setState(() {});
                      },
                      child: isLoading
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    color: AppColors.appBg,
                                    strokeWidth: 2,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                const Text(
                                  "Signing...",
                                  style: TextStyle(
                                    color: AppColors.appBg,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            )
                          : const Text(
                              "LOGIN",
                              style: TextStyle(
                                color: AppColors.appBg,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(color: AppColors.greyTxt, thickness: 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          'or',
                          style: TextStyle(
                            color: AppColors.blackTxt,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(color: AppColors.greyTxt, thickness: 1),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                   Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.bottomNavBarBg,
                      ),
                      onPressed: () async {
                        setState(() {});
                        await Future.delayed(Duration(seconds: 3));
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SplashScreen(),
                          ),
                        );
                        setState(() {});
                      },
                          child:  const Text(
                              "Continue With Google",
                              style: TextStyle(
                                color: AppColors.blackTxt,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "New to Kharcha? ",
                        style: TextStyle(color: AppColors.greyTxt),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Create account",
                          style: TextStyle(color: AppColors.greenBg,
                            fontWeight: FontWeight.w800
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
