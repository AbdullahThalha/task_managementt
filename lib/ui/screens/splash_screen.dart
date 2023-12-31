import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_managementt/ui/utils/assets_utils.dart';

import 'auth/login_screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    navigateToLogin();
  }

  void navigateToLogin() {
    Future.delayed(const Duration(seconds: 3)).then((_) => {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
            (route) => false,
          )
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SvgPicture.asset(
              AssetsUtils.backgroundSVG,
              fit: BoxFit.fitHeight,
            ),
          ),
          Center(
            child: SvgPicture.asset(
              AssetsUtils.logoSVG,
              width: 90,
              fit: BoxFit.scaleDown,
            ),
          )
        ],
      ),
    );
  }
}
