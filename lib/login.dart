import 'package:flutter/material.dart';
import 'package:peeka/Colors.dart';
import 'package:peeka/Strings.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beige,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/ic_logo.png'),
              const SizedBox(height: 120), // 아이콘과 버튼 사이의 간격
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: InkWell(
                  onTap: () {
                    /** TODO 카카오 로그인 구현 */
                  },
                  child: Image.asset('assets/images/ic_kakao_login.png'),
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
        ),
      ),
    );
  }
}
