import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/common/utils/constants.dart';
import 'package:todoapp/common/widgets/appstyle.dart';
import 'package:todoapp/common/widgets/height_spacer.dart';
import 'package:todoapp/common/widgets/reusable_text.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConst.kHeight,
      width: AppConst.kWidth,
      color: AppConst.kBkDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Image.asset("assets/todo.png"),
          ),
          const HeightSpacer(height: 100),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ResuableText(
                text: "ToDo App",
                style: appstyle(
                  30,
                  AppConst.kLight,
                  FontWeight.w600,
                ),
              ),
              const HeightSpacer(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Welcome!! Do yo want to create a task fast and with ease",
                  textAlign: TextAlign.center,
                  style: appstyle(16, AppConst.kGreyLight, FontWeight.normal),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
