import 'package:flutter/material.dart';
import 'package:task_managementt/ui/screens/bottom_nav_base_screen.dart';
import 'package:task_managementt/ui/screens/email_verification_screen.dart';
import 'package:task_managementt/ui/screens/auth/signup_screen.dart';
import '../../widgets/screen_background.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenBackground(
            child:SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 64,),
          Text(
              'Get Started With',
              style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
              height: 16,
          ),
          const TextField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
          ),
          const SizedBox(
              height: 12,
          ),
          const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
          ),
          const SizedBox(
              height: 16,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomNavigationBaseScreen()), (route) => false);
                  }, child: const Icon(Icons.arrow_forward_ios)),
          ),
          const SizedBox(
              height: 16,
          ),
          Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EmailVerificationScreen()));
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, letterSpacing: 0.6),
                ),
                TextButton(onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                }, child: const Text('Sign Up')),
              ],
          ),
        ],
      ),
    ),
            ),
        )
    );
  }
}
