import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_kharcha/constants/app_colors.dart';
import 'package:my_kharcha/veiws/HomeScreen.dart';
class EditExpenses extends StatefulWidget {
  const EditExpenses({super.key});

  @override
  State<EditExpenses> createState() => _EditExpensesState();
}

class _EditExpensesState extends State<EditExpenses> {
  bool isLoading = false;
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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

                Text(
                  "Expense",
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColors.blackTxt,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Spacer(),
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
                      Icons.delete,
                      color: Colors.red,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
              Center(
                child: Container(
                  height: 72,
                  width: 72,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF0D8),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.restaurant,
                    color: Colors.orange,
                    size: 45,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Rs 850",
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColors.blackTxt,
                        fontSize: 44,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Biryani lunch",
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColors.blackTxt,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
    SizedBox(height: 10),
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
    SizedBox(width: 10),
    Text(
    "Category",
    style: GoogleFonts.plusJakartaSans(
    color: AppColors.greyTxt,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    ),
    ),
    Spacer(),
   Text(
     "Food",
     style: GoogleFonts.plusJakartaSans(
       color: AppColors.blackTxt,
       fontSize: 15,
       fontWeight: FontWeight.w800,
     ),
   )
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
          SizedBox(width: 10),
          Text(
            "Date",
            style: GoogleFonts.plusJakartaSans(
              color: AppColors.greyTxt,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Text(
            "Fri, 2 Oct 2026",
            style: GoogleFonts.plusJakartaSans(
              color: AppColors.blackTxt,
              fontSize: 15,
              fontWeight: FontWeight.w800,
            ),
          )
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
          SizedBox(width: 10),
          Text(
            "Time",
            style: GoogleFonts.plusJakartaSans(
              color: AppColors.greyTxt,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Text(
            "1:15 PM",
            style: GoogleFonts.plusJakartaSans(
              color: AppColors.blackTxt,
              fontSize: 15,
              fontWeight: FontWeight.w800,
            ),
          )
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
          SizedBox(width: 10),
          Text(
            "Paid with",
            style: GoogleFonts.plusJakartaSans(
              color: AppColors.greyTxt,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Text(
            "Cash",
            style: GoogleFonts.plusJakartaSans(
              color: AppColors.blackTxt,
              fontSize: 15,
              fontWeight: FontWeight.w800,
            ),
          )
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
          SizedBox(width: 10),
          Text(
            "Note",
            style: GoogleFonts.plusJakartaSans(
              color: AppColors.greyTxt,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Text(
            "Lunch with Muneeb",
            style: GoogleFonts.plusJakartaSans(
              color: AppColors.blackTxt,
              fontSize: 15,
              fontWeight: FontWeight.w800,
            ),
          )
        ],
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
    ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.greenBg,
                  ),
                  onPressed: () {
                    setState(() {});
                  },
                  child: isLoading
                      ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 12),
                    ],
                  )
                      : Text(
                    "Edit expense",
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColors.appBg,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(

                    backgroundColor: AppColors.bottomNavBarBg,
                    side: BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),

                  ),
                  onPressed: () {
                    setState(() {});
                  },
                  child: isLoading
                      ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 12),
                    ],
                  )
                      : Text(
                    "Delete expense",
                    style: GoogleFonts.plusJakartaSans(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
    ],
        ),
      ),
      );
  }
}
