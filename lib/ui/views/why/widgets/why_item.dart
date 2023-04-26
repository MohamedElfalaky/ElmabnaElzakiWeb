import 'package:flutter/material.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
class WhyItem extends StatelessWidget {
 final String title,body,icon;
  const WhyItem({Key? key,required this.title,required this.body,required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      Image.asset("assets/why/$icon"),
      verticalSpaceMedium,
      Text(title,
      style: ktsTitleText.copyWith(color: kcSecondaryColor,fontSize: 20,fontWeight: FontWeight.w100),textAlign: TextAlign.center),
      verticalSpaceMedium,
      Text(body,
      style: ktsTitleText.copyWith(color: Colors.grey.withOpacity(.7),fontSize: 17,fontWeight: FontWeight.w100),textAlign: TextAlign.center),
    ],);
  }
}
