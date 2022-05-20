import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/controllers/auth_controllers.dart';
import 'package:get/get.dart';

import '../../components/reusable_primary_button.dart';
import '../../components/reusable_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthController authController = AuthController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ReusableTextField(
              labelText: 'Phone/Email',
              controller: authController.loginEmailController,
            ),
            SizedBox(
              height: 20,
            ),
            ReusableTextField(
              labelText: 'Password',
              controller: authController.loginPasswordController,
            ),
            SizedBox(
              height: 20,
            ),

            // Lets make a custom button and convert into a component
            ReusablePrimaryButton(
              onTap: () {
                authController.loginUser();
              },
              buttonText: 'Login',
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have any account?'),
                TextButton(
                  onPressed: () {
                    Get.to(LoginScreen());
                  },
                  child: Text('Sign Up'),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
