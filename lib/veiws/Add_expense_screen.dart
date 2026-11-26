import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_kharcha/constants/app_colors.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  bool isLoading = false;
  TextEditingController priceController = TextEditingController();
  FocusNode priceFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                    child: Icon(
                      Icons.cancel_rounded,
                      color: AppColors.blackTxt,
                      size: 25,
                    ),
                  ),
                ),
                SizedBox(width: 110),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Add expense",
                        style: GoogleFonts.plusJakartaSans(
                          color: AppColors.blackTxt,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Amount",
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColors.greyTxt,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Rs."),
                    SizedBox(
                      width: (priceController.text.length * 15.0 + 30).clamp(
                        150.0,
                        300.0,
                      ),
                      child: TextField(
                        controller: priceController,
                        textInputAction: TextInputAction.next,
                        focusNode: priceFocus,
                        onChanged: (value) {
                          setState(() {});
                        },
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: AppColors.greyTxt),
                        decoration: InputDecoration(
                          fillColor: Colors.transparent,
                          filled: true,
                          hintText: "Enter Amount",
                          hintStyle: const TextStyle(color: AppColors.greyTxt),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       "Rs",
                //       style: GoogleFonts.plusJakartaSans(
                //         color: AppColors.greyTxt,
                //         fontSize: 26,
                //         fontWeight: FontWeight.w700,
                //       ),
                //     ),
                //     Text(
                //       "1,250",
                //       style: GoogleFonts.plusJakartaSans(
                //         color: AppColors.blackTxt,
                //         fontSize: 38,
                //         fontWeight: FontWeight.w800,
                //       ),
                //     )
                //   ],
                // ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: AppColors.bottomNavBarBg,
                  borderRadius: BorderRadius.circular(16),
                  border: BoxBorder.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Category",
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColors.greyTxt,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 32,
                          width: 32,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFF0D8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.restaurant,
                            color: Colors.orange,
                            size: 13,
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
                          Icons.arrow_forward_ios,
                          color: AppColors.greyTxt,
                          size: 18,
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
                          "Date",
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColors.greyTxt,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Today, 2 Oct 2026",
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColors.blackTxt,
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.greyTxt,
                          size: 18,
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
                          "Note",
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColors.greyTxt,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "lunch with Muneeb",
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColors.blackTxt,
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.greyTxt,
                          size: 18,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.greenBg,
                ),
                onPressed: () {
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
                        "Save expense",
                        style: GoogleFonts.plusJakartaSans(
                          color: AppColors.appBg,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
