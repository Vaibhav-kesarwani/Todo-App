import 'package:flutter/material.dart';
import 'package:todoapp/common/utils/constants.dart';
import 'package:todoapp/common/widgets/appstyle.dart';
import 'package:todoapp/common/widgets/reusable_text.dart';
import 'package:todoapp/common/widgets/width_spacer.dart';

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ResuableText(
              text: "Todo App",
              style: appstyle(26, AppConst.kBlueLight, FontWeight.bold),
            ),
            const WidthSpacer(width: 20),
            ResuableText(
              text: "Todo App",
              style: appstyle(26, AppConst.kBlueLight, FontWeight.bold),
            ),
            const WidthSpacer(width: 20),
            ResuableText(
              text: "Todo App",
              style: appstyle(26, AppConst.kBlueLight, FontWeight.bold),
            ),
            const WidthSpacer(width: 20),
          ],
        ),
      ),
    );
  }
}
