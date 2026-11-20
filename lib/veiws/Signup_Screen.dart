import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_kharcha/constants/app_colors.dart';

import 'LoginScreen.dart';

class SignupScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isLoading = false;
  bool isProtected = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  FocusNode emailFocus = FocusNode();
  FocusNode passFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    bool isDone = false;
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.bottomNavBarBg,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.blackTxt,
                  size: 25,
                ),
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text(
                    "Create your account",
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColors.blackTxt,
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                    ),
                   ),
                   SizedBox(height: 10),
                   Text(
                     "Back up your expenses and use Kharcha on all your devices.",
                         style: GoogleFonts.plusJakartaSans(
                           color: AppColors.greyTxt,
                           fontSize: 16,
                         ),
                   ),
                   SizedBox(height: 20),
                   Text(
                     "Full name",
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

                       hintText: "Your name",
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
                       hintText: "Create a Password",
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
                   SizedBox(height: 20),
               Row(
                 children: [
                   Checkbox(
                     activeColor: AppColors.greenBg,
                     value: isDone = true,
                     onChanged: (isCheckedFlag) {
                      isDone = isCheckedFlag!;
                       setState(() {});
                     },
                   ),
                   Text(
                     "I agree to the",
                     style: GoogleFonts.plusJakartaSans(
                       color: AppColors.greyTxt,
                       fontSize: 15,
                     ),
                   ),
                   Text(
                     "Terms",
                     style: TextStyle(
                       color: AppColors.blackTxt,
                       fontSize: 15,
                       fontWeight: FontWeight.w800,
                     ),
                   ),
                   SizedBox(width: 3),
                   Text(
                     "and",
                     style: GoogleFonts.plusJakartaSans(
                       color: AppColors.greyTxt,
                       fontSize: 15,
                     ),
                   ),
                   SizedBox(width: 3),
                   Text(
                     "Privacy Policy.",
                     style: TextStyle(
                       color: AppColors.blackTxt,
                       fontSize: 15,
                       fontWeight: FontWeight.w800,
                     ),
                   ),
                 ],
               ),
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
                         isLoading = false;
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
                         ],
                       )
                           :  Text(
                         "Create account",
                         style: GoogleFonts.plusJakartaSans(
                           color: AppColors.appBg,
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                     ),
                   ),
                   SizedBox(height: 30),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                        Text(
                         "Already have an account?",
                         style: GoogleFonts.plusJakartaSans(color: AppColors.greyTxt),
                       ),
                       TextButton(
                         onPressed: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(
                               builder: (context) => const LoginPage(),
                             ),
                           );
                         },
                         child: Text(
                           "Log in",
                           style: GoogleFonts.plusJakartaSans(
                               color: AppColors.greenBg,
                             fontWeight: FontWeight.w800,
                           ),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: 10),
                 ],
             )
             ),
          ],
        ),
      ),
    );
  }
}