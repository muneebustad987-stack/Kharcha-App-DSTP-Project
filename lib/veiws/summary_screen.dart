import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_kharcha/constants/app_colors.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
     body: SafeArea(
       child: Padding(
         padding: const EdgeInsets.symmetric(
           horizontal: 15.0,
           vertical: 10,
         ),
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
                   Padding(padding: EdgeInsetsGeometry.all(1.0),
                   ),
                   Container(
                     width: 90.0,
                     height: 30,
                     child: Center(
                       child: Text(
                         "Week",
                         style: GoogleFonts.plusJakartaSans(
                           color: AppColors.greyTxt,
                           fontSize: 14,
                           fontWeight: FontWeight.w600,
                         ),
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
                         )
                       ],
                     ),
             SizedBox(height: 10),
             Container(
               width: double.infinity,
               height: 190,
               decoration: BoxDecoration(
                 color: AppColors.bottomNavBarBg,
                 borderRadius: BorderRadius.circular(20),
               ),
             )
           ],
         ),
       ),
     ),
    );
  }
}
