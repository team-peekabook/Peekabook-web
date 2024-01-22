import 'package:flutter/material.dart';
import 'package:peeka/colors.dart';
import 'package:peeka/strings.dart';
import 'package:peeka/withdrawDialog.dart';

class WithdrawPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beige,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Column(
                children: [
                  Text(
                    Strings.withdrawTitle,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.red),
                  ),
                  Divider(color: AppColors.red, thickness: 2),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/ic_trash.png',
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    Strings.withdrawDescription,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.red,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 56,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    // TODO: deleteUser()
                    showDialog(
                      context: context,
                      builder: (context) => WithdrawDialog(),
                      barrierDismissible: false,
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.red,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: const Text(
                    Strings.withdrawButton,
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
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
