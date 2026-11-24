import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:my_kharcha/constants/app_colors.dart';

class SummaryScreen extends StatefulWidget {
  const SummaryScreen({super.key});

  @override
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  final List<Map<String, dynamic>> expenses = const [
    {'name': 'Bills', 'value': 32.0, 'color': Color(0xFF8956F5)},
    {'name': 'Food', 'value': 29.0, 'color': Color(0xFFFFA000)},
    {'name': 'Transport', 'value': 13.0, 'color': Color(0xFF3985FF)},
    {'name': 'Shopping', 'value': 12.0, 'color': Color(0xFFE83E91)},
    {'name': 'Health', 'value': 6.0, 'color': Color(0xFFFF414D)},
    {'name': 'Fun', 'value': 8.0, 'color': Color(0xFF12BFA5)},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Summary",
                style: GoogleFonts.plusJakartaSans(
                  color: AppColors.blackTxt,
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                ),
              ),

              SizedBox(height: 10),

              Container(
                width: double.infinity,
                height: 44,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.all(1.0)),
                    Container(
                      width: 90.0,
                      height: 30,
                      child: Text(
                        "Week",
                        style: GoogleFonts.plusJakartaSans(
                          color: AppColors.greyTxt,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      width: 90.0,
                      height: 30,
                      decoration: BoxDecoration(
                        color: AppColors.bottomNavBarBg,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Center(
                        child: Text(
                          "Month",
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColors.blackTxt,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 90.0,
                      height: 30,
                      child: Center(
                        child: Text(
                          "Year",
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColors.greyTxt,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.greyTxt,
                    size: 20,
                  ),
                  Text(
                    "October 2026",
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColors.blackTxt,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.greyTxt,
                    size: 20,
                  ),
                ],
              ),

              SizedBox(height: 10),
              Container(
                height: 160,
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 130,
                      width: 130,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          PieChart(
                            PieChartData(
                              sectionsSpace: 0,
                              centerSpaceRadius: 42,
                              startDegreeOffset: -90,
                              sections: expenses.map((expense) {
                                return PieChartSectionData(
                                  value: expense['value'],
                                  color: expense['color'],
                                  radius: 15,
                                  showTitle: false,
                                );
                              }).toList(),
                            ),
                          ),

                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                'Rs 40,000',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF17243A),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: expenses.map((expense) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Row(
                              children: [
                                Container(
                                  height: 9,
                                  width: 9,
                                  decoration: BoxDecoration(
                                    color: expense['color'],
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),

                                SizedBox(width: 7),

                                Expanded(
                                  child: Text(
                                    expense['name'],
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),

                                Text(
                                  '${(expense['value'] as double).toInt()}%',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                  color: AppColors.bottomNavBarBg,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Spending by week",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.blackTxt,
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Highest: Week 2",
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.greyTxt,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          height: 130,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "8.2K",
                                    style: GoogleFonts.plusJakartaSans(
                                      color: AppColors.blackTxt,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    height: 93,
                                    width: 56,
                                    decoration: BoxDecoration(
                                      color: AppColors.lightGreen,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(12),
                                        topLeft: Radius.circular(12),
                                      )
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "11.4K",
                                    style: GoogleFonts.plusJakartaSans(
                                      color: AppColors.blackTxt,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    height: 100,
                                    width: 46,
                                    decoration: BoxDecoration(
                                        color: AppColors.greenBg,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(12),
                                          topLeft: Radius.circular(12),
                                        )
                                    ),
                                  ),

                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "9.8K",
                                    style: GoogleFonts.plusJakartaSans(
                                      color: AppColors.blackTxt,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    height: 100,
                                    width: 56,
                                    decoration: BoxDecoration(
                                        color: AppColors.lightGreen,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(12),
                                          topLeft: Radius.circular(12),
                                        )
                                    ),
                                  ),

                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "10.6K",
                                    style: GoogleFonts.plusJakartaSans(
                                      color: AppColors.blackTxt,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    height: 100,
                                    width: 44,
                                    decoration: BoxDecoration(
                                        color: AppColors.lightGreen,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(12),
                                          topLeft: Radius.circular(12),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
