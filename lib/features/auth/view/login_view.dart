import 'package:flutter/material.dart';
import 'package:twitter_clone/common/rounded_small_button.dart';
import 'package:twitter_clone/constants/ui_constants.dart';
import 'package:twitter_clone/features/auth/widgets/auth_field.dart';
import 'package:twitter_clone/theme/theme.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final appbar = UIConstants.appBar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
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
                      // text field 1
                      AuthField(
                        controller: emailController,
                        hinttext: 'Email',
                      ),
                      //text field 2:context.watch<SubjectBloc>()
                      const SizedBox(height: 20),
                      AuthField(
                        controller: passwordController,
                        hinttext: 'Password',
                      ),

                      const SizedBox(height: 40),
                      // button
                      Align(
                        alignment: Alignment.topRight,
                        child: RoundedSmallButton(
                          onTap: () {},
                          label: 'Done',
                        ),
                      ),
                      const SizedBox(height: 40), // text span
                      RichText(
                          text: const TextSpan(
                              text: 'Don\'t have an account?',
                              style: TextStyle(fontSize: 16, color: Pallete.greyColor),
                              children: [
                            TextSpan(
                              text: 'Sign up',
                              style: TextStyle(fontSize: 16, color: Pallete.blueColor),
                            )
                          ]))
                    ],
                  )))),
    );
  }
}
