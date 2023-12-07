import 'package:flutter/material.dart';
import 'package:task_managementt/ui/screens/email_verification_screen.dart';
import '../widgets/screen_background.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenBackground(
            child:Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                onPressed: () {}, child: const Icon(Icons.arrow_forward_ios)),
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
              TextButton(onPressed: () {}, child: const Text('Sign Up')),
            ],
          ),
        ],
      ),
    ),
        )
    );
  }
}
