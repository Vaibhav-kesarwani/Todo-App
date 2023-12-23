import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todoapp/common/utils/constants.dart';
import 'package:todoapp/common/widgets/appstyle.dart';
import 'package:todoapp/common/widgets/custom_outlinebtn.dart';
import 'package:todoapp/common/widgets/custom_text.dart';
import 'package:todoapp/common/widgets/height_spacer.dart';
import 'package:todoapp/common/widgets/reusable_text.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Image.asset(
                  "assets/todo.png",
                  width: 300,
                ),
              ),
              const HeightSpacer(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 16.w),
                child: ResuableText(
                  text: "Please enter your phone number",
                  style: appstyle(
                    17,
                    AppConst.kLight,
                    FontWeight.w500,
                  ),
                ),
              ),
              const HeightSpacer(height: 20),
              Center(
                child: CustomTextField(
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(4),
                    child: GestureDetector(),
                  ),
                  keyboardType: TextInputType.phone,
                  hintText: "Enter phone number",
                  hintStyle: appstyle(16, AppConst.kBkDark, FontWeight.w600),
                  controller: phone,
                ),
              ),
              const HeightSpacer(height: 20),
              CustomOutlineButton(
                onTap: null,
                width: AppConst.kWidth * 0.9,
                height: AppConst.kHeight * 0.07,
                color: AppConst.kBkDark,
                color2: AppConst.kLight,
                text: "Send Code",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
