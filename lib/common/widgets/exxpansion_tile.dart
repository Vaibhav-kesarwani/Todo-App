import 'package:flutter/material.dart';
import 'package:todoapp/common/utils/constants.dart';

class ExxpansionTile extends StatelessWidget {
  const ExxpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppConst.kBkLight,
        borderRadius: BorderRadius.all(Radius.circular(AppConst.kRadius)),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          title: BottomTitles(),
        ),
      ),
    );
  }
}
