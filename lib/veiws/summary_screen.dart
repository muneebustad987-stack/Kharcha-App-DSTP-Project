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
        child: SingleChildScrollView(
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

                const SizedBox(height: 10),

                // Week Month Year Selector
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
                      const Padding(padding: EdgeInsets.all(1.0)),

                      SizedBox(
                        width: 90,
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
                        width: 90,
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

                      SizedBox(
                        width: 90,
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

                const SizedBox(height: 10),

                // Month Selector
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

                const SizedBox(height: 10),

                // Donut Chart
                Container(
                  height: 160,
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
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
                                const Text(
                                  'Total',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),

                                const Text(
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

                      const SizedBox(width: 12),

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: expenses.map((expense) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 3),
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

                                  const SizedBox(width: 7),

                                  Expanded(
                                    child: Text(
                                      expense['name'],
                                      style: const TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),

                                  Text(
                                    '${(expense['value'] as double).toInt()}%',
                                    style: const TextStyle(
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

                const SizedBox(height: 10),
                Container(
                  height: 246,
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(26),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Spending by week',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: AppColors.blackTxt,
                            ),
                          ),

                          Text(
                            'Highest: Week 2',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              color: AppColors.greyTxt,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          '8.2k',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        SizedBox(height: 7),

                                        Container(
                                          height: 80,
                                          width: 48,
                                          decoration: const BoxDecoration(
                                            color: AppColors.linearBarLight,
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        const Text(
                                          '11.4k',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        const SizedBox(height: 7),

                                        Container(
                                          height: 110,
                                          width: 48,
                                          decoration: const BoxDecoration(
                                            color: AppColors.greenBg,
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        const Text(
                                          '9.8k',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        const SizedBox(height: 7),

                                        Container(
                                          height: 95,
                                          width: 48,
                                          decoration: const BoxDecoration(
                                            color: AppColors.linearBarLight,
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        const Text(
                                          '10.6k',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        const SizedBox(height: 7),

                                        Container(
                                          height: 105,
                                          width: 48,
                                          decoration: const BoxDecoration(
                                            color: AppColors.linearBarLight,
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(height: 1, color: AppColors.greyTxt),
                            Row(
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'Wk 1',
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.greyTxt,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'Wk 2',
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.greyTxt,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'Wk 3',
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.greyTxt,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'Wk 4',
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.greyTxt,
                                      ),
                                    ),
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
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
