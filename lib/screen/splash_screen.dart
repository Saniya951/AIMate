import 'package:flutter/material.dart';
import 'package:my_app/screen/home_screen.dart';
import 'package:my_app/widget/custom_loading.dart';
// import 'package:get/get.dart';

import '../helper/global.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    //initializing device size
    mq = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SizedBox(
        width: double.maxFinite, //to amake it center
        child: Column(
          children: [
            const Spacer(flex: 2),
            Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: EdgeInsets.all(mq.width * .05),
                  child: Image.asset('assets/images/logo.png',
                      width: mq.width * .4),
                )),
            const Spacer(),
            const CustomLoading(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
