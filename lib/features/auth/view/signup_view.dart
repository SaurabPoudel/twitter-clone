import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/common/rounded_small_button.dart';
import 'package:twitter_clone/constants/ui_constants.dart';
import 'package:twitter_clone/features/auth/widgets/auth_field.dart';
import 'package:twitter_clone/theme/theme.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpView();
}

class _SignUpView extends State<SignUpView> {
  final appbar = UIConstants.appBar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                AuthField(controller: emailController, hinttext: 'Email'),
                const SizedBox(height: 20),
                AuthField(controller: passwordController, hinttext: 'Password'),
                const SizedBox(height: 40),
                Align(
                  alignment: Alignment.topRight,
                  child: RoundedSmallButton(
                    onTap: () {},
                    label: 'Done',
                  ),
                ),
                const SizedBox(height: 40),
                RichText(
                    text: TextSpan(
                        text: 'Already have an account?',
                        style: const TextStyle(fontSize: 16, color: Pallete.greyColor),
                        children: [
                      TextSpan(
                        text: 'Login',
                        style: const TextStyle(fontSize: 16, color: Pallete.blueColor),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      )
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
