import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_kharcha/constants/app_colors.dart';
import 'package:my_kharcha/veiws/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final sh = MediaQuery.of(context).size.height;
    final sw = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.linearBarLight,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                    left: 20,
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.bottomNavBarBg,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Image.asset(
                    "assets/icon.jpg",
                    height: sh * 0.10,
                    width: sw * 0.20,
                  ),
                ),
                Text(
                  "Kharcha",
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColors.bottomNavBarBg,
                    fontSize: 44,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Track every rupee and see where you money goes",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColors.bottomNavBarBg,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 18,
                  ),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () async {
                            setState(() {
                              isLoading = true;
                            });
                            await Future.delayed(const Duration(seconds: 2));
                            var route = MaterialPageRoute(
                              builder: (_) => const LoginPage(),
                            );
                            Navigator.pushReplacement(context, route);
                          },
                    child: isLoading
                        ? const SizedBox(
                            height: 22,
                            width: 22,
                            child: CircularProgressIndicator(
                              strokeWidth: 4,
                              color: AppColors.blackTxt,
                            ),
                          )
                        : Text(
                            "Get Started",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                  ),
                ),

                TextButton(
                  onPressed: () {},
                  child: Text(
                    "I have already have an account",
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColors.bottomNavBarBg,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
