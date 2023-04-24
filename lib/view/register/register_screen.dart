import 'package:flutter/material.dart';

import '../widget/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          Padding(
              padding: EdgeInsets.all(15.0),
              child: Center(
                child: SingleChildScrollView(child: RegisterForm()),
              ))
        ],
      )),
    );
  }
}
