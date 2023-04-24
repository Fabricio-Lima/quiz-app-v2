import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../routes/route_manager.dart';
import '../../utils/misc/constants.dart';
import '../../utils/misc/validators.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();

    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBoxH30(),
            TextFormField(
              textInputAction: TextInputAction.next,
              validator: validateEmail,
              controller: emailController,
              decoration:
                  formDecoration('Email address', Icons.mail_outline as Icon),
            ),
            const SizedBoxH10(),
            TextFormField(
              textInputAction: TextInputAction.next,
              validator: validatePassword,
              controller: passwordController,
              decoration:
                  formDecoration('password', Icons.lock_outline as Icon),
            ),
            const SizedBoxH20(),
            //Button forget password
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(
                          context, RouteManager.registerPage);
                    },
                    child: const Text(
                      "Forgot password?",
                      style: style16Black,
                    ))
              ],
            ),
            //Buttons Login & Register
            CupertinoButton(
              onPressed: () {},
              color: Colors.indigo,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: const Text(
                'Sign In',
                style: style16White,
              ),
            ),
            const SizedBoxH10(),
            CupertinoButton(
              onPressed: () {},
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: const Text('Sign Up', style: style16Indigo),
            )
          ],
        ),
      ),
    );
  }
}
