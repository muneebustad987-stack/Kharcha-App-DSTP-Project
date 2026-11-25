import 'package:flutter/material.dart';
import 'package:my_kharcha/constants/app_colors.dart';
import 'package:my_kharcha/veiws/Add_expense_screen.dart';
import 'package:my_kharcha/veiws/HomeScreen.dart';
import 'package:my_kharcha/veiws/expenses_screen.dart';
import 'package:my_kharcha/veiws/setting_screen.dart';
import 'package:my_kharcha/veiws/summary_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _screens = [
    HomeScreen(),
    ExpensesScreen(),
    SummaryScreen(),
    SettingScreen(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: _screens[currentIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewPadding.bottom,
        ),
        color: AppColors.bottomNavBarBg,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              navbarItem(label: 'Home', index: 0, navBarIcon: Icons.home),
              navbarItem(label: 'Expenses', index: 1, navBarIcon: Icons.list),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddExpenseScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 52,
                  width: 52,
                  decoration: const BoxDecoration(
                    color: AppColors.greenBg,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.add, color: AppColors.bottomNavBarBg),
                ),
              ),
              navbarItem(
                label: 'Summary',
                index: 2,
                navBarIcon: Icons.bar_chart,
              ),
              navbarItem(label: 'Settings', index: 3, navBarIcon: Icons.tune),
            ],
          ),
        ),
      ),
    );
  }
  Widget navbarItem({
    required String label,
    required int index,
    required IconData navBarIcon,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          currentIndex = index;
          setState(() {});
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              navBarIcon,
              size: 28,
              color: currentIndex == index
                  ? AppColors.greenBg
                  : AppColors.blackTxt,
            ),
            Text(
              label,
              style: TextStyle(
                color: currentIndex == index
                    ? AppColors.greenBg
                    : AppColors.blackTxt,
                fontSize: 17,
                fontWeight: currentIndex == index
                    ? FontWeight.w700
                    : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
