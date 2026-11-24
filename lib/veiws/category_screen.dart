import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_kharcha/veiws/monthly_budget.dart';

import '../constants/app_colors.dart';
class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
                            builder: (context) => const MonthlyBudget(),
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
                          "Categories",
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
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.bottomNavBarBg,
                        borderRadius: BorderRadius.circular(15),
                        border: BoxBorder.all(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Container(
                              height: 44,
                              width: 44,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFF0D8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.restaurant,
                                color: Colors.orange,
                                size: 25,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Food",
                              style: GoogleFonts.plusJakartaSans(
                                color: AppColors.blackTxt,
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Spacer(),
                            Icon(
                                Icons.menu,
                              size: 25,
                              color: AppColors.blackTxt,
                            ),
                          ],
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
