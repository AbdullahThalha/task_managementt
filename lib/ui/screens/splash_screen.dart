import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_managementt/ui/screens/login_screens.dart';
import 'package:task_managementt/ui/utils/assets_utils.dart';
import 'package:task_managementt/ui/widgets/screen_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((_)=>{
      navigateToLogin()
    });

  }


  void navigateToLogin(){

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const  LoginScren()),
            (route) => false,
      );

  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
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
