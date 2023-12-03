import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets_utils.dart';
import '../widgets/screen_background.dart';

class LoginScren extends StatelessWidget {
  const LoginScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenBackground(
            child:SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Get Started With',style: TextStyle(
                        fontSize: 32,
                        color: Colors.black
                    ),),
                    TextField(),
                    TextField(),
                    ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_forward_ios)),
                    TextButton(onPressed: (){}, child: Text('Forgot Password')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        TextButton(onPressed: (){}, child: Text('Forgot Password')),
                      ],
                    ),

                  ],
                ),
              ),
            )
        )
    );
  }
}


