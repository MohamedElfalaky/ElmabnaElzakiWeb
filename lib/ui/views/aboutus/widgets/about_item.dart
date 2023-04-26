import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/app_constants.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
class AboutItem extends StatelessWidget {
 final String title,body,icon;
 final Widget? otherChild;
  const AboutItem({Key? key,required this.body,required this.icon,required this.title,this.otherChild}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final childrenColumn =
    [
      Text(title,style: ktsTitleText.copyWith(fontSize: 30,color: kcPrimaryColor,fontWeight: FontWeight.w200),),
      verticalSpaceLarge,
      Container(
        width: kdDesktopMaxContentWidth * 0.45,
        child: Text(body,style: ktsTitleText.copyWith(fontSize: 17,fontWeight: FontWeight.w100,height: 1.5),textAlign: TextAlign.end,),
      ),
      otherChild??Container()
    ];
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: ScreenTypeLayout.builder(
        mobile: (_)=>Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          Column(crossAxisAlignment: CrossAxisAlignment.end,children: childrenColumn,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: kdDesktopMaxContentWidth * 0.55,
                child: SvgPicture.asset("assets/aboutUs/$icon")),
          ),
        ]),
        desktop: (_)=>Row(mainAxisAlignment: MainAxisAlignment.end,children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // width: kdDesktopMaxContentWidth * 0.55,
                  child: SvgPicture.asset("assets/aboutUs/$icon")),
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.end,children: childrenColumn,),
        ]),
      ),
    );
  }
}
