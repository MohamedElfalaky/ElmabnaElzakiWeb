import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';

class ContactUsItem extends StatelessWidget {
  final String title, icon;
  final void Function()? onTap;
  const ContactUsItem(
      {Key? key, required this.title, required this.icon, required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(icon, width: 35, height: 35),
          tinySpacedDivider,
          InkWell(
            onTap: onTap,
            child: Text(title,
                style: ktsTitleText.copyWith(
                    color: kcSecondaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w100),
                textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
