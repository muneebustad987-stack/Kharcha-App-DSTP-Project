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
                    border: BoxBorder.all(color: Colors.grey.shade300),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
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
                        Divider(
                          color: AppColors.greyTxt,
                          indent: 5,
                          endIndent: 5,
                          thickness: 0.5,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 44,
                              width: 44,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xFFE0EDFF),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.directions_car_outlined,
                                color: Colors.blue,
                                size: 25,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Transport",
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
                        Divider(
                          color: AppColors.greyTxt,
                          indent: 5,
                          endIndent: 5,
                          thickness: 0.5,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 44,
                              width: 44,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xFFEDE2FF),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.receipt_long,
                                color: Colors.deepPurple,
                                size: 25,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Bill",
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
                        Divider(
                          color: AppColors.greyTxt,
                          indent: 5,
                          endIndent: 5,
                          thickness: 0.5,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 44,
                              width: 44,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xFFFCE1F0),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.pink,
                                size: 25,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Shopping",
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
                        Divider(
                          color: AppColors.greyTxt,
                          indent: 5,
                          endIndent: 5,
                          thickness: 0.5,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 44,
                              width: 44,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFE3E1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                                size: 25,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Health",
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
                        Divider(
                          color: AppColors.greyTxt,
                          indent: 5,
                          endIndent: 5,
                          thickness: 0.5,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 44,
                              width: 44,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(213, 243, 239, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.star_border,
                                color: Colors.greenAccent,
                                size: 25,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Fun",
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
                        Divider(
                          color: AppColors.greyTxt,
                          indent: 5,
                          endIndent: 5,
                          thickness: 0.5,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 44,
                              width: 44,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(228, 240, 207, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.message_outlined,
                                color: Colors.green,
                                size: 25,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Education",
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
                        Divider(
                          color: AppColors.greyTxt,
                          indent: 5,
                          endIndent: 5,
                          thickness: 0.5,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 44,
                              width: 44,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                                size: 25,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Others",
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
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: AppColors.lightGreen,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColors.linearBarLight),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          "Tap a category to rename it or change its color and icon. Drag the handle to reorder.",
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColors.greenBg,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
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
