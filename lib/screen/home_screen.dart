import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:get/get.dart';

import '../helper/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode
        .edgeToEdge); // this will show sttaus bar nd bottom navigation bar in home page for going back or for opening notification
  }

  @override
  Widget build(BuildContext context) {
    //initializing device size
    mq = MediaQuery.sizeOf(context);

    return const Scaffold(
      body: Center(
        child: Text('Welcome to home screen'),
      ),
    );
  }
}
