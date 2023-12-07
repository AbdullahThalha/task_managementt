import 'package:flutter/material.dart';
import 'package:task_managementt/ui/widgets/screen_background.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get Started With',
                style: Theme.of(context).textTheme.titleLarge,
              ),

              const SizedBox(height: 4,),
              Text(
                'A 6 digit pin will send to your email address',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 24,),

              const TextField(
                decoration: InputDecoration(
                  hintText: 'Email',

                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Icon(Icons.arrow_forward_ios)),
              ),


            ],
          ),
        ),
      ),

    );
  }
}
