import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/controllers/auth_controllers.dart';
import 'package:get/get.dart';

import '../../components/reusable_primary_button.dart';
import '../../components/reusable_textfield.dart';
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Instance of auth controller
    AuthController authController = AuthController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            // let's make text form field after we will convert into a component
            ReusableTextField(
              labelText: 'Phone/Email',
              controller: authController.emailController,
            ),
            SizedBox(
              height: 20,
            ),
            ReusableTextField(
              labelText: 'Password',
              controller: authController.passwordController,
            ),
            SizedBox(
              height: 20,
            ),

            // Lets make a custom button and convert into a component
            ReusablePrimaryButton(
              onTap: () {
                authController.createAccount();
              },
              buttonText: 'Sign Up',
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?'),
                TextButton(
                  onPressed: () {
                    Get.to(LoginScreen());
                  },
                  child: Text('Login'),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
