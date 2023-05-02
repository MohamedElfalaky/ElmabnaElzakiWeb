import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/app_constants.dart';
import 'package:zah_website/ui/common/footer.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zah_website/ui/common/widgets/custom_header.dart';
import 'package:zah_website/ui/views/aboutus/widgets/about_item.dart';
import 'package:zah_website/ui/views/aboutus/widgets/about_item_features.dart';

import 'aboutus_viewmodel.dart';

class AboutUsViewDesktop extends ViewModelWidget<AboutUsModel> {
  const AboutUsViewDesktop({super.key});

  @override
  Widget build(BuildContext context, AboutUsModel viewModel) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          // width: kdDesktopMaxContentWidth,
          child: Column(
            children: [
              CustomHeader(currentPage: "من نحن"),
              Expanded(
                child: ListView(
                  children: [
                    Center(
                      child: SizedBox(
                        width: kdDesktopMaxContentWidth,
                        child: Column(children: [
                          verticalSpaceLarge,
                          AboutItem(
                            title: "من نحن",
                            icon: "about1.svg",
                            otherChild: AboutItemFeatures(),
                            body: '''
                              .زاه سوفت نوفر حلول رقمية مبتكرة وتطوير لمختلف أنواع البرمجيات والأنظمة للمنشآت الصغيرة والمتوسطة داخل المملكة العربية السعودية وخارجها 
                      
                      نستخدم أحدث التقنيات في السوق مع فريق من المحترفين والمتخصصين في المجال , نعمل بخطى ثابتة وشغف لنقدم أفضل جودة ممكنة ونطور برمجيات تلبي تطلعاتك وتزيد من انتاجية نشاطك التجاري وتتناسب مع جمهورك المستهدف 
                          ''',
                          ),
                          AboutItem(
                            title: "هدفنا",
                            icon: "about2.svg",
                            body: '''
                          نهدف لتوفير أفضل الخدمات الداعمة للتحسين من أداء المنشآت والمؤسسات وزيادة الاداء بطريقة فعالة والتعزيز من تواجدها على الانترنت , باستغلال أحدث التقنيات والتحسين المستمر في الخدمات , لضمان رضا عملائنا 
                          ''',
                          ),
                          AboutItem(
                            title: "رؤيتنا",
                            icon: "about3.svg",
                            body: '''
                          تحقيق النجاح والمساهمة في التحول الرقمي الذى تشهده المملكة العربية السعودية عبر مستويات عالية من الخبرة والابداع , لنكون في المرتبة الأولى في السعودية والعالم العربي 
                          ''',
                          ),
                          verticalSpaceLarge,
                        ]),
                      ),
                    ),
                    Footer()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
