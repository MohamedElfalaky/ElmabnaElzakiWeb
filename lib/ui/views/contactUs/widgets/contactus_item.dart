import 'package:flutter/material.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';

class ContactUsItem extends StatelessWidget {
  final String title;
  final Widget icon;
  const ContactUsItem({Key? key, required this.title, required this.icon})
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
          icon,
          tinySpacedDivider,
          Text(title,
              style: ktsTitleText.copyWith(
                  color: kcSecondaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w100),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
