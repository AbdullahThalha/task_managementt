import 'package:flutter/material.dart';
import 'package:task_managementt/data/models/network_response.dart';
import 'package:task_managementt/data/services/network_caller.dart';
import 'package:task_managementt/data/utils/urls.dart';
import 'package:task_managementt/ui/screens/email_verification_screen.dart';
import '../../widgets/screen_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final TextEditingController _emailTEController=TextEditingController();
  final TextEditingController _firstNameTEController=TextEditingController();
  final TextEditingController _lastNameTEController=TextEditingController();
  final TextEditingController _mobileTEController=TextEditingController();
  final TextEditingController _passwordTEController=TextEditingController();

  final GlobalKey<FormState>_formKey = GlobalKey<FormState>();

  bool _signUpInProgress=false;

   Future<void> userSignUp() async {
     _signUpInProgress = true;

       setState(() {

       });

     Map<String,dynamic>requestBody={
         "email": _emailTEController.text,
         "firstName": _firstNameTEController.text,
         "lastName": _lastNameTEController.text,
         "mobile": _mobileTEController.text,
         "password":_passwordTEController.text,

     };

     final NetworkResponse response=
         await NetworkCaller().postRequest(Urls.registration,requestBody);

     _signUpInProgress = false;

       setState(() {});


    if (response.isSuccess) {
      _emailTEController.clear();
      _passwordTEController.clear();
      _firstNameTEController.clear();
      _lastNameTEController.clear();
      _mobileTEController.clear();

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Registration success!')));
      }
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Registration failed!')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenBackground(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
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
              TextFormField(
                controller: _emailTEController,
                  keyboardType: TextInputType.emailAddress,
                  decoration:const  InputDecoration(
                    hintText: 'Email',
                  ),
                validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Enter your email';
                    }
                    return null;
                  },
              ),
              const SizedBox(
                  height: 12,
              ),
               TextFormField(
                 controller: _firstNameTEController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: 'First Name',
                  ),
                 validator: (String? value) {
                   if (value!.isEmpty) {
                     return 'Enter your first name';
                   }
                   return null;
                 },
              ),
              const SizedBox(
                  height: 16,
              ),
               TextFormField(
                 controller: _lastNameTEController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: 'Last Name',
                  ),

                 validator: (String? value) {
                   if (value!.isEmpty) {
                     return 'Enter your last name';
                   }
                   return null;
                 },
              ),
              const SizedBox(
                  height: 16,
              ),
              TextFormField(
                 controller:_mobileTEController,
                  keyboardType: TextInputType.phone,
                  decoration:const InputDecoration(
                    hintText: 'Mobile',
                  ),
                validator: (String? value) {
                  if ((value!.isEmpty) ||   value!.length < 11) {
                    return 'Enter your valid mobile no';
                  }
                  return null;
                },
              ),
              const SizedBox(
                  height: 16,
              ),
               TextFormField(
                 controller: _passwordTEController,
                  obscureText: true,
                  decoration:const InputDecoration(
                    hintText: 'Password',
                  ),
                validator: (String? value) {
                  if ((value!.isEmpty)  ||  value!.length <= 5) {
                    return 'Enter a password more than 6 letters';
                  }
                  return null;
                },
              ),

              const SizedBox(
                  height: 16,
              ),
                SizedBox(
                  width: double.infinity,
                  child: Visibility(
                    visible: _signUpInProgress == false,
                    replacement:
                        const Center(child: CircularProgressIndicator()),
                    child: ElevatedButton(
                        onPressed: () {
                          if (!_formKey.currentState!.validate()) {
                            userSignUp();
                          }
                        },
                        child: const Icon(Icons.arrow_forward_ios)),
                  ),
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
      ),
    ));
  }
}
