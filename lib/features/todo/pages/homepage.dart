import 'package:flutter/material.dart';
import 'package:todoapp/common/utils/constants.dart';
import 'package:todoapp/common/widgets/appstyle.dart';
import 'package:todoapp/common/widgets/reusable_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ResuableText(
              text: "Todo",
              style: appstyle(26, AppConst.kBlueLight, FontWeight.bold),
            ),
            ResuableText(
              text: "Todo",
              style: appstyle(26, AppConst.kBlueLight, FontWeight.bold),
            ),
            ResuableText(
              text: "Todo",
              style: appstyle(26, AppConst.kBlueLight, FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
