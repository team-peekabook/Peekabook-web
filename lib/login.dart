import 'package:flutter/material.dart';
import 'package:peeka/appColors.dart';
import 'package:peeka/strings.dart';
import 'package:url_launcher/url_launcher.dart';

import 'notRegistered.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beige,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Image.asset(
                    'assets/images/ic_logo.png',
                    height: 240,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: InkWell(
                      onTap: () {
                        /** TODO 카카오 로그인 구현 */
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotRegisteredPage()),
                        );
                      },
                      child: Image.asset(
                        'assets/images/ic_kakao_login.png',
                        height: 56,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(Strings.agreementInfo,
                      style: TextStyle(color: AppColors.g1)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: const Text(Strings.termsOfService,
                            style: TextStyle(color: AppColors.g2)),
                        onTap: () => launch(Strings.termsOfServiceUrl),
                      ),
                      const Text(Strings.and,
                          style: TextStyle(color: AppColors.g1)),
                      InkWell(
                        child: const Text(Strings.privacyPolicy,
                            style: TextStyle(color: AppColors.g2)),
                        onTap: () => launch(Strings.privacyPolicyUrl),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
