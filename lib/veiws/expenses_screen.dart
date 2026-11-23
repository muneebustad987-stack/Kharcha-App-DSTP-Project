import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_kharcha/constants/app_colors.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  TextEditingController searchController = TextEditingController();
  FocusNode searchFocus = FocusNode();

  int selectedIndex = 0;

  List<String> categories = [
    'All',
    'Food',
    'Transport',
    'Bills',
    'Shopping',
    'Entertainment',
    'Daraz order',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Expenses",
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColors.blackTxt,
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                  ),
                ),
        
                const SizedBox(height: 10),
        
                TextField(
                  controller: searchController,
                  textInputAction: TextInputAction.search,
                  focusNode: searchFocus,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: AppColors.greyTxt),
                  decoration: InputDecoration(
                    fillColor: AppColors.bottomNavBarBg,
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppColors.greyTxt,
                    ),
                    hintText: "Search expenses",
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
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.greyTxt,
                      size: 18,
                    ),
                    Text(
                      "October 2026",
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColors.blackTxt,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.greyTxt,
                      size: 18,
                    ),
                    Spacer(),
                    Text(
                      "Total Rs 40,000",
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColors.greenBg,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 42,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 9,
                          ),
                          decoration: BoxDecoration(
                            color: selectedIndex == index
                                ? AppColors.blackTxt
                                : AppColors.bottomNavBarBg,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: AppColors.greyTxt),
                          ),
                          child: Center(
                            child: Text(
                              categories[index],
                              style: GoogleFonts.plusJakartaSans(
                                color: selectedIndex == index
                                    ? AppColors.bottomNavBarBg
                                    : AppColors.blackTxt,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Today",
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColors.greyTxt,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Rs 1,470",
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColors.greyTxt,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                    color: AppColors.bottomNavBarBg,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: AppColors.appBg),
                  ),
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
                          Column(
                            children: [
                              Text(
                                "Biryani lunch",
                                style: GoogleFonts.plusJakartaSans(
                                  color: AppColors.blackTxt,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Food.1:15 PM",
                                style: GoogleFonts.plusJakartaSans(
                                  color: AppColors.greyTxt,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "Rs 850",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
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
                          Column(
                            children: [
                              Text(
                                "Careem ride",
                                style: GoogleFonts.plusJakartaSans(
                                  color: AppColors.blackTxt,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Transport.9:40 AM",
                                style: GoogleFonts.plusJakartaSans(
                                  color: AppColors.greyTxt,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "Rs 620",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Yesterday",
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColors.greyTxt,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Rs 4,140",
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColors.greyTxt,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                    color: AppColors.bottomNavBarBg,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: AppColors.appBg),
                  ),
                  child: Column(
                    children: [
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
                          Column(
                            children: [
                              Text(
                                "Pharmacy",
                                style: GoogleFonts.plusJakartaSans(
                                  color: AppColors.blackTxt,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Health.6:30 PM",
                                style: GoogleFonts.plusJakartaSans(
                                  color: AppColors.greyTxt,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "Rs 940",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
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
                          Column(
                            children: [
                              Text(
                                "Daraz order",
                                style: GoogleFonts.plusJakartaSans(
                                  color: AppColors.blackTxt,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Shopping.2:10 PM",
                                style: GoogleFonts.plusJakartaSans(
                                  color: AppColors.greyTxt,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "Rs 3,200",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Yesterday",
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColors.greyTxt,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Rs 4,140",
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColors.greyTxt,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                    color: AppColors.bottomNavBarBg,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: AppColors.appBg),
                  ),
                  child: Column(
                    children: [
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
                              color: Colors.purple,
                              size: 25,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                "K-Electric bill",
                                style: GoogleFonts.plusJakartaSans(
                                  color: AppColors.blackTxt,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Bills.11:00 AM",
                                style: GoogleFonts.plusJakartaSans(
                                  color: AppColors.greyTxt,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "Rs 7,400",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
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
                          Container(
                            height: 44,
                            width: 44,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(213, 243, 239, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.star_border_outlined,
                              color: Colors.greenAccent,
                              size: 25,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                "Cinema tickets",
                                style: GoogleFonts.plusJakartaSans(
                                  color: AppColors.blackTxt,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Fun.8:00 PM",
                                style: GoogleFonts.plusJakartaSans(
                                  color: AppColors.greyTxt,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "Rs 1,600",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
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
