import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/common/utils/constants.dart';
import 'package:todoapp/common/widgets/custom_outlinebtn.dart';
import 'package:todoapp/common/widgets/height_spacer.dart';
import 'package:todoapp/features/auth/pages/login_page.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

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
          const HeightSpacer(height: 50),
          CustomOutlineButton(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
            width: AppConst.kWidth * 0.9,
            height: AppConst.kHeight * 0.06,
            color2: Colors.transparent,
            color: AppConst.kLight,
            text: "Login with a phone number",
          ),
        ],
      ),
    );
  }
}
