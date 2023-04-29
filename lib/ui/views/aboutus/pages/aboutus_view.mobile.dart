import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/footer.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zah_website/ui/common/widgets/custom_drawer.dart';
import 'package:zah_website/ui/common/widgets/custom_header.dart';
import 'package:zah_website/ui/views/aboutus/widgets/about_item.dart';
import 'package:zah_website/ui/views/aboutus/widgets/about_item_features.dart';

import 'aboutus_viewmodel.dart';

class AboutUsViewMobile extends ViewModelWidget<AboutUsModel> {
  const AboutUsViewMobile({super.key});

  @override
  Widget build(BuildContext context, AboutUsModel viewModel) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(scaffoldKey: _scaffoldKey, currentPage: "من نحن"),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CustomHeader(currentPage: "من نحن", scaffoldKey: _scaffoldKey),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(
                        children: [
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
