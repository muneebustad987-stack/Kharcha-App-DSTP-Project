import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';
class MonthlyBudget extends StatefulWidget {
  const MonthlyBudget ({super.key});

  @override
  State<MonthlyBudget> createState() => _MonthlyBudgetState();
}

class _MonthlyBudgetState extends State<MonthlyBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  GestureDetector(
                  onTap: () {
                  Navigator.pop(context);
                  },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.bottomNavBarBg,
                  borderRadius: BorderRadius.circular(25),
                ),
                child:
                    Icon(
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
                  vertical: 18.0
                ),
                child: Column(
                  children: [
                    Text(
                      "Monthly Budget",
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColors.blackTxt,
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      );
  }
}
