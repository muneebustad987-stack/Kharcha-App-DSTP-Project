import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_kharcha/veiws/summary_screen.dart';

import '../constants/app_colors.dart';

class MonthlyBudget extends StatefulWidget {
  const MonthlyBudget({super.key});

  @override
  State<MonthlyBudget> createState() => _MonthlyBudgetState();
}

class _MonthlyBudgetState extends State<MonthlyBudget> {
  bool isSwitched = false;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SummaryScreen(),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
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
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 18.0,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Monthly Budget",
                              style: GoogleFonts.plusJakartaSans(
                                color: AppColors.blackTxt,
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    color: AppColors.greenBg,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "October Spanding",
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColors.bottomNavBarBg,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Rs. 60,000",
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColors.bottomNavBarBg,
                            fontSize: 38,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Rs51,000 given to categories . Rs9,000 not assigned",
                              style: GoogleFonts.plusJakartaSans(
                                color: AppColors.bottomNavBarBg,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(10.0),
                  width: double.infinity,
                  height: 62,
                  decoration: BoxDecoration(
                    color: AppColors.bottomNavBarBg,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Warn me at 80%",
                            style: TextStyle(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Get a nudge before you overspend",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.greyTxt,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
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
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Limits by category",
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColors.greyTxt,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 10),
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
                            "Food",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Rs 11,600/15,000",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.greyTxt,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      LinearProgressIndicator(
                        value: 0.75,
                        color: AppColors.linearBarLight,
                        backgroundColor: AppColors.bottomNavBarBg,
                        minHeight: 8,
                        borderRadius: BorderRadius.circular(20),
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
                            "Bills",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Rs 12,800/14,000",
                            style: GoogleFonts.plusJakartaSans(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      LinearProgressIndicator(
                        value: 0.92,
                        color: Colors.red,
                        backgroundColor: AppColors.bottomNavBarBg,
                        minHeight: 8,
                        borderRadius: BorderRadius.circular(20),
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
                            "Transport",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Rs 5,200/6,000",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.greyTxt,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      LinearProgressIndicator(
                        value: 0.85,
                        color: Colors.deepOrange,
                        backgroundColor: AppColors.bottomNavBarBg,
                        minHeight: 8,
                        borderRadius: BorderRadius.circular(20),
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
                            "Shopping",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Rs 4,800/8,000",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.greyTxt,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      LinearProgressIndicator(
                        value: 0.62,
                        color: AppColors.linearBarLight,
                        backgroundColor: AppColors.bottomNavBarBg,
                        minHeight: 8,
                        borderRadius: BorderRadius.circular(20),
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
                            "Health",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Rs 24,00/4,000",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.greyTxt,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      LinearProgressIndicator(
                        value: 0.58,
                        color: AppColors.linearBarLight,
                        backgroundColor: AppColors.bottomNavBarBg,
                        minHeight: 8,
                        borderRadius: BorderRadius.circular(20),
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
                            "Fun",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Rs 3,200/4,000",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.greyTxt,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      LinearProgressIndicator(
                        value: 0.80,
                        color: Colors.deepOrange,
                        backgroundColor: AppColors.bottomNavBarBg,
                        minHeight: 8,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      Divider(
                        color: AppColors.greyTxt,
                        indent: 5,
                        endIndent: 5,
                        thickness: 0.5,
                      ),
                    ],
                  ),
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
                        : Text(
                            "Save Budget",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.appBg,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
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
