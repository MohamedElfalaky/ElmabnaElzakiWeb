import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zah_website/ui/common/widgets/custom_header.dart';
import 'package:zah_website/ui/views/aboutus/widgets/about_item.dart';
import 'package:zah_website/ui/views/aboutus/widgets/about_item_features.dart';

import 'aboutus_viewmodel.dart';

class AboutUsViewTablet extends ViewModelWidget<AboutUsModel> {
  const AboutUsViewTablet({super.key});

  @override
  Widget build(BuildContext context, AboutUsModel viewModel) {
    return Scaffold(
      body: Column(
        children: [
          CustomHeader(currentPage: "من نحن"),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
              child: ListView(
                children: const[
                  verticalSpaceLarge,
                  AboutItem(
                    title: "من نحن",
                    icon: "about1.svg",
                    otherChild: AboutItemFeatures(),
                    body: '''
                        زاه سوفت نوفر حلول رقمية مبتكرة وتطوير لمختلف أنواع البرمجيات والأنظمة للمنشآت الصغيرة والمتوسطة والمؤسسات الحكومية داخل المملكة العربية السعودية وخارجها .

نستخدم أحدث التقنيات في السوق مع فريق من المحترفين والمتخصصين في المجال , نعمل بخطى ثابتة وشغف لنقدم أفضل جودة ممكنة ونطور برمجيات تلبي تطلعاتك وتزيد من انتاجية نشاطك التجاري وتتناسب مع جمهورك المستهدف .
                    ''',
                  ),
                  AboutItem(
                    title: "هدفنا",
                    icon: "about2.svg",
                    body: '''
                    نهدف لتوفير أفضل الخدمات الداعمة للتحسين من أداء المنشآت والمؤسسات وزيادة الاداء بطريقة فعالة والتعزيز من تواجدها على الانترنت , باستغلال أحدث التقنيات والتحسين المستمر في الخدمات , لضمان رضا عملائنا .
                    ''',
                  ),
                  AboutItem(
                    title: "رؤيتنا",
                    icon: "about3.svg",
                    body: '''
                    تحقيق النجاح والمساهمة في التحول الرقمي الذى تشهده المملكة العربية السعودية عبر مستويات عالية من الخبرة والابداع , لنكون في المرتبة الأولى في السعودية والعالم العربي .
                    ''',
                  ),
                  verticalSpaceLarge,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
