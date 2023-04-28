import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';

Widget oneService(String sericeName) {
  return Row(
    // mainAxisAlignment: MainAxisAlignment.center,
    // mainAxisSize: MainAxisSize.min,
    children: [
      const Icon(
        Icons.check_box_outlined,
        color: kcPrimaryColor,
      ),
      horizontalSpaceSmall,
      Text(
        sericeName,
        style: const TextStyle(fontSize: 14),
      ),
    ],
  );
}

List<List> whyZahSoft = [
  [
    {"name": "تحليل احتياجات المنشأة بعناية", "pic": "1.png"},
    {"name": "رفع الكفاءة الإنتاجية", "pic": "2.png"},
    {"name": "أتمتتة المهام", "pic": "3.png"},
  ],
  [
    {"name": "التحسين من جودة الاتصال", "pic": "4.png"},
    {"name": "نطبق منهجية أجايل ١٠٠٪", "pic": "5.png"},
    {"name": "المزيد من الأمان", "pic": "6.png"},
  ],
  [
    {"name": "سرعة أداء عاملين المنشأة", "pic": "7.png"},
    {"name": "تواجد رقمي دائم", "pic": "8.png"},
    {"name": "فريق برمجي متكامل", "pic": "9.png"},
  ],
  [
    {"name": "إتفاقية سرية المعلومات", "pic": "10.png"},
    {"name": "تحليل احتياجية المنشأة بعناية", "pic": "11.png"},
    {"name": "رفع الكفاءة الإنتاجية", "pic": "12.png"},
  ],
];

///
List whyZahSoftMobile = [
  {"name": "تحليل احتياجات المنشأة بعناية", "pic": "1.png"},
  {"name": "رفع الكفاءة الإنتاجية", "pic": "2.png"},
  {"name": "أتمتتة المهام", "pic": "3.png"},
  {"name": "التحسين من جودة الاتصال", "pic": "4.png"},
  {"name": "نطبق منهجية أجايل ١٠٠٪", "pic": "5.png"},
  {"name": "المزيد من الأمان", "pic": "6.png"},
  {"name": "سرعة أداء عاملين المنشأة", "pic": "7.png"},
  {"name": "تواجد رقمي دائم", "pic": "8.png"},
  {"name": "فريق برمجي متكامل", "pic": "9.png"},
  {"name": "إتفاقية سرية المعلومات", "pic": "10.png"},
  {"name": "تحليل احتياجية المنشأة بعناية", "pic": "11.png"},
  {"name": "رفع الكفاءة الإنتاجية", "pic": "12.png"},
];

///

InputDecoration setTextInputDecoration(
    {Widget? prefixIcon,
    Widget? suffixIcon,
    Color? prefixColor,
    Color? suffixColor,
    Color? borderColor,
    Color? fillColor,
    bool? isParagraph,
    Widget? lable,
    String? hintText}) {
  return InputDecoration(
    filled: true,
    // fillColor: Color.fromARGB(255, 245, 242, 242),
    // hoverColor: kcPrimaryColor.withOpacity(0.7),
    label: lable,
    labelStyle: GoogleFonts.cairo(fontSize: 16, color: kcSecondaryColor),
    errorStyle: GoogleFonts.cairo(color: Colors.red, fontSize: 12),
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: kcSecondaryColor),
    ),
    enabledBorder: OutlineInputBorder(
      gapPadding: 0,
      borderSide: BorderSide(
        color: Color.fromARGB(255, 5, 5, 5).withOpacity(0.2),
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
    // border:  OutlineInputBorder(
    //   gapPadding: 0,
    //   borderSide: BorderSide(
    //     color: Color(0xff808488).withOpacity(0.8),
    //   ),
    //   borderRadius: BorderRadius.all(
    //     Radius.circular(8),
    //   ),
    // ),
    hintText: hintText,
    hintStyle: GoogleFonts.cairo(
        color: Color.fromARGB(255, 234, 226, 225), fontSize: 12),
  );
}
