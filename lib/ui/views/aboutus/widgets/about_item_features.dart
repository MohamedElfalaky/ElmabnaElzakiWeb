import 'package:flutter/material.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
class AboutItemFeatures extends StatelessWidget {
  const AboutItemFeatures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _aboutItemFeatures (String title){
      return Row(mainAxisAlignment: MainAxisAlignment.end,children: [
        Text(title,style: ktsTitleText.copyWith(fontSize: 17,fontWeight: FontWeight.w100,color: Colors.grey),),
        Icon(Icons.check_circle,color: Colors.grey,),
      ],);
    }
    return  Column(crossAxisAlignment: CrossAxisAlignment.end,children: [
      _aboutItemFeatures("نطبق نظام أجايل لإدارة المشروعات 100%."),
      verticalSpaceTiny,
      _aboutItemFeatures("حلول برمجية احترافية قابلة للتخصيص ."),
      verticalSpaceTiny,
      _aboutItemFeatures("فريق برمجي متكامل لتنفيذ مشروعك."),
      verticalSpaceTiny,
      _aboutItemFeatures("دعم فني احترافي على مدار اليوم."),
      verticalSpaceTiny,
      _aboutItemFeatures("برمجة نظم ERP على حسب الاحتياجات."),
    ],);
  }
}
