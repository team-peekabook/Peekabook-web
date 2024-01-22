import 'package:flutter/material.dart';
import 'package:peeka/strings.dart';

import 'colors.dart';

class WithdrawDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;

    return Dialog(
        backgroundColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        insetPadding: const EdgeInsets.symmetric(horizontal: 16),
        child: Material(
          color: AppColors.beige,
          child: Container(
            width: width,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  Strings.withdrawDialogTitle,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.red),
                ),
                const SizedBox(height: 5),
                const Text(
                  Strings.withdrawDialogContent,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColors.red,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: TextButton(
                    onPressed: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                    },
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      backgroundColor: AppColors.red,
                      padding: const EdgeInsets.symmetric(vertical: 9),
                    ),
                    child: const Text(
                      Strings.withdrawDialogConfirm,
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
        ));
  }
}
