import 'package:flutter/material.dart';
import 'package:flutter_responsice_login_ui/widgets/my_button.dart';
import 'package:flutter_responsice_login_ui/widgets/my_input_field.dart';
import 'package:flutter_responsice_login_ui/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              Text(
                'Sign in.',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              //
              const SizedBox(height: 50.0),
              SocialButton(
                iconPath: 'assets/svgs/g_logo.svg',
                labelText: 'Continue with Google',
                onPressed: () {},
              ),
              const SizedBox(height: 20.0),
              SocialButton(
                iconPath: 'assets/svgs/f_logo.svg',
                labelText: 'Continue with Facebook',
                horizontalPadding: 90,
                onPressed: () {},
              ),
              const SizedBox(height: 15.0),
              Text('or', style: TextStyle(fontSize: 17.0, color: Colors.white)),
              const SizedBox(height: 15.0),
              MyInputField(
                hintText: 'Email',
              ),
              const SizedBox(height: 15.0),
              MyInputField(
                hintText: 'Password',
                isObscureText: true,
              ),
              const SizedBox(height: 20.0),
              MyButton(onPressed: () {}),
              const SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
