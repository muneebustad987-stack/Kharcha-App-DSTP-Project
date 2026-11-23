import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_kharcha/constants/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> myList = [
    {
      'title': 'Biryani lunch',
      'subtitle': 'Food · Today, 1:15 PM',
      'amount': 'Rs 850',
      'icon': Icons.restaurant,
      'iconColor': Colors.orange,
      'bgColor': Color(0xFFFFF0D8),
    },
    {
      'title': 'Careem ride',
      'subtitle': 'Transport · Today, 9:40 AM',
      'amount': 'Rs 620',
      'icon': Icons.directions_car,
      'iconColor': Colors.blue,
      'bgColor': Color(0xFFE0EDFF),
    },
    {
      'title': 'Pharmacy',
      'subtitle': 'Health · Yesterday',
      'amount': 'Rs 940',
      'icon': Icons.favorite_border,
      'iconColor': Colors.red,
      'bgColor': Color(0xFFFFE3E1),
    },
    {
      'title': 'Daraz order',
      'subtitle': 'Shopping · Yesterday',
      'amount': 'Rs 3,200',
      'icon': Icons.shopping_bag_outlined,
      'iconColor': Colors.pink,
      'bgColor': Color(0xFFFCE1F0),
    },
    {
      'title': 'K-Electric bill',
      'subtitle': 'Bills · 28 Sep',
      'amount': 'Rs 7,400',
      'icon': Icons.receipt_long,
      'iconColor': Colors.deepPurple,
      'bgColor': Color(0xFFEDE2FF),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Column(
            children: [
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Good Morning",
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColors.greyTxt,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: "\nMuneeb Sheikh",
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColors.blackTxt,
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: AppColors.lightGreen,
                    radius: 26,
                    child: Text(
                      "MS",
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColors.greenBg,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  color: AppColors.greenBg,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: EdgeInsetsGeometry.all(20),
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
                        "Rs. 40,000",
                        style: GoogleFonts.plusJakartaSans(
                          color: AppColors.bottomNavBarBg,
                          fontSize: 38,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      LinearProgressIndicator(
                        value: 0.67,
                        color: AppColors.bottomNavBarBg,
                        backgroundColor: AppColors.linearBarLight,
                        minHeight: 8,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      Row(
                        children: [
                          Text(
                            "67% of Rs 60,000 budget",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.bottomNavBarBg,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Rs. 20,000 left",
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

              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Recent",
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColors.blackTxt,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColors.greenBg,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12),

              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: AppColors.appBg),
                  ),
                  child: ListView.builder(
                    itemCount: myList.length,
                    itemBuilder: (context, index) {
                      final item = myList[index];
                      return Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          border: index == myList.length - 1
                              ? null
                              : Border(
                                  bottom: BorderSide(color: AppColors.appBg),
                                ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                color: item['bgColor'],
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Icon(
                                item['icon'],
                                color: item['iconColor'],
                                size: 20,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['title'],
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.blackTxt,
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    item['subtitle'],
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 10,
                                      color: AppColors.greyTxt,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              item['amount'],
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: AppColors.blackTxt,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
