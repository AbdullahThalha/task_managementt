import 'package:flutter/material.dart';
import 'package:task_managementt/ui/screens/email_verification_screen.dart';
import '../../widgets/screen_background.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
              'Join With us',
              style: Theme.of(context).textTheme.titleLarge,
          ),
              const SizedBox(
                height: 16,
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'First Name',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Last Name',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Mobile',
                ),
              ),
              const SizedBox(
                height: 16,
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
                    onPressed: () {},
                    child: const Icon(Icons.arrow_forward_ios)),
              ),
              const SizedBox(
                height: 16,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "have an account?",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, letterSpacing: 0.6),
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
    ));
  }
}
