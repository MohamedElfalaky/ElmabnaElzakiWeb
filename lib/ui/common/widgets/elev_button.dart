import 'package:flutter/material.dart';
import 'package:zah_website/ui/common/app_colors.dart';

class myElevButton extends StatelessWidget {
  final double? height;
  final double? width;
  final colorButton;
  final colorText;
  final String? txt;
  final onTapHandler;
  const myElevButton(
      {super.key,
      this.height,
      this.width,
      this.colorButton,
      this.colorText,
      this.onTapHandler,
      this.txt});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      // width: width ?? 140,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorButton ?? kcPrimaryColor,
          ),
          onPressed: () {},
          child: Text(
            txt ?? "",
            style: TextStyle(color: colorText ?? Colors.white),
          )),
    );
  }
}
