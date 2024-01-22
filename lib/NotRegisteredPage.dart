import 'package:flutter/material.dart';

import 'Colors.dart';
import 'Strings.dart';

class NotRegisteredPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beige,
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 16,
            top: 16,
            child: SizedBox(
              height: 28,
              child: Image.asset('assets/images/ic_title_logo.png'),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Image.asset('assets/images/ic_sad.png'),
                ),
                const SizedBox(height: 16),
                const Text(
                  Strings.notRegistered,
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColors.red60,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
