import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app_v2/routes/route_manager.dart';
import 'package:quiz_app_v2/utils/misc/constants.dart';

import '../widget/app_progress_indicator.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  //implement init state to initialize app
  @override
  void initState() {
    super.initState();
    //set timer before directing no next page
    Timer(const Duration(seconds: 5), () {
      Navigator.popAndPushNamed(context, RouteManager.loginPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Loading Page",
            style: titleStyleIndigo,
          ),
          AppProgressIndicator(),
        ],
      )),
    );
  }
}
