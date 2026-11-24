import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_kharcha/constants/app_colors.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isSwitched = false;
  bool isSecondSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "Settings",
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColors.blackTxt,
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.bottomNavBarBg,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.appBg),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.lightGreen,
                        radius: 26,
                        child: Text(
                          "MS",
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColors.greenBg,
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Muneeb Sheikh",
                              style: GoogleFonts.plusJakartaSans(
                                color: AppColors.blackTxt,
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              "Data saved on this device",
                              style: GoogleFonts.plusJakartaSans(
                                color: AppColors.greyTxt,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 10,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Edit",
                              style: GoogleFonts.plusJakartaSans(
                                color: AppColors.greenBg,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Preferences",
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColors.greyTxt,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: AppColors.bottomNavBarBg,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: AppColors.appBg),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Currency",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Pakistani Rupee(Rs)",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.greyTxt,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: AppColors.greyTxt,
                        indent: 5,
                        endIndent: 5,
                        thickness: 0.5,
                      ),
                      Row(
                        children: [
                          Text(
                            "Monthly budget",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Rs 60,000",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.greyTxt,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 15),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.greyTxt,
                            size: 15,
                          ),
                        ],
                      ),
                      Divider(
                        color: AppColors.greyTxt,
                        indent: 5,
                        endIndent: 5,
                        thickness: 0.5,
                      ),
                      Row(
                        children: [
                          Text(
                            "Categories",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "8",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.greyTxt,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 15),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.greyTxt,
                            size: 15,
                          ),
                        ],
                      ),
                      Divider(
                        color: AppColors.greyTxt,
                        indent: 5,
                        endIndent: 5,
                        thickness: 0.5,
                      ),
                      Row(
                        children: [
                          Text(
                            "Dark mode",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 55,
                            height: 30,
                            decoration: BoxDecoration(
                              color: isSwitched
                                  ? AppColors.greenBg
                                  : AppColors.greyTxt,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSwitched = !isSwitched;
                                });
                              },
                              child: AnimatedAlign(
                                duration: const Duration(milliseconds: 200),
                                alignment: isSwitched
                                    ? Alignment.centerRight
                                    : Alignment.centerLeft,
                                child: Container(
                                  width: 26,
                                  height: 26,
                                  margin: const EdgeInsets.all(2),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: AppColors.greyTxt,
                        indent: 5,
                        endIndent: 5,
                        thickness: 0.5,
                      ),
                      Row(
                        children: [
                          Text(
                            "Daily reminder",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 55,
                            height: 30,
                            decoration: BoxDecoration(
                              color: isSecondSwitched
                                  ? AppColors.greenBg
                                  : AppColors.greyTxt,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSecondSwitched = !isSecondSwitched;
                                });
                              },
                              child: AnimatedAlign(
                                duration: const Duration(milliseconds: 200),
                                alignment: isSecondSwitched
                                    ? Alignment.centerRight
                                    : Alignment.centerLeft,
                                child: Container(
                                  width: 26,
                                  height: 26,
                                  margin: const EdgeInsets.all(2),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Every day at 9:00 PM",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.greyTxt,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "Your data",
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColors.greyTxt,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: AppColors.bottomNavBarBg,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: AppColors.appBg),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Export as CSV",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.download,
                            color: AppColors.greyTxt,
                            size: 25,
                          ),
                        ],
                      ),
                      Divider(
                        color: AppColors.greyTxt,
                        indent: 5,
                        endIndent: 5,
                        thickness: 0.5,
                      ),
                      Row(
                        children: [
                          Text(
                            "Logout",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.logout,
                            color: AppColors.greyTxt,
                            size: 25,
                          ),
                        ],
                      ),
                      Divider(
                        color: AppColors.greyTxt,
                        indent: 5,
                        endIndent: 5,
                        thickness: 0.5,
                      ),
                      Row(
                        children: [
                          Text(
                            "Delete all data",
                            style: GoogleFonts.plusJakartaSans(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.delete, color: Colors.red, size: 25),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    "Kharcha 1.0",
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColors.greyTxt,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
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
