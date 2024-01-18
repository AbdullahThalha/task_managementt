import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_managementt/data/models/auth_utility.dart';
import 'package:task_managementt/ui/screens/bottom_nav_base_screen.dart';
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

  Future<void> navigateToLogin() async {

    await Future.delayed(const Duration(seconds: 3)).then((_) async {
      final bool isLoggedIn = await AuthUtility.cheakIfUserLoggedIn();

      if (mounted) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => isLoggedIn
                ? const BottomNavigationBaseScreen()
                : const LoginScreen(),
          ),
              (route) => false,
        );
      }
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
