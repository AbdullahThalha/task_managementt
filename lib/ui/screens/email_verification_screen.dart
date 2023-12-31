import 'package:flutter/material.dart';
import 'package:task_managementt/ui/screens/auth/otp_verification_screen.dart';
import 'package:task_managementt/ui/widgets/screen_background.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 64,),
                Text(
                  'Your email address',
                  style: Theme.of(context).textTheme.titleLarge,
                ),

                const SizedBox(height: 4,),
                Text(
                  'A 6 digit pin will send to your email address',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey,
                      ),
                ),
                const SizedBox(height: 24,),

                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',

                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const OtpVerificationScreen()));
                    },
                    child: const Icon(Icons.arrow_circle_right_outlined),
                  ),
                ),

                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Have an account?",
                      style:
                      TextStyle(fontWeight: FontWeight.w600, letterSpacing: 0.6),
                    ),
                    TextButton(onPressed: () {
                      Navigator.pop(context);
                    }, child: const Text('Sign in')),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
