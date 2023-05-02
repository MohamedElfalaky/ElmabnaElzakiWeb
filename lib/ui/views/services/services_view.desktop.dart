import 'package:carousel_slider/carousel_slider.dart';
import 'package:lottie/lottie.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zah_website/ui/common/widgets/custom_header.dart';
import 'package:zah_website/ui/common/footer.dart';
import 'package:zah_website/ui/views/home/shared/shared_components.dart';

import '../../common/app_constants.dart';
import 'services_viewmodel.dart';

class ServicesDesktop extends ViewModelWidget<ServicesModel> {
  ServicesDesktop({super.key});

  final CarouselController _controller = CarouselController();
  String? _selectedItem;
  final ScrollController _scrollController = ScrollController();
  final servicesDataKey = GlobalKey();

  @override
  Widget build(BuildContext context, ServicesModel viewModel) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Column(
            children: [
              CustomHeader(currentPage: "خدماتنا"),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        verticalSpaceLarge,
                        Text(
                          'خدماتنا',
                          style: ktsTitleText.copyWith(
                              fontSize: 30, color: kcSecondaryColor),
                          key: servicesDataKey,
                        ),
                        verticalSpaceSmall,
                        //
                        // our services
                        //
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Lottie.asset("assets/web.json", height: 100),
                                  Text('تأسيس المواقع التعريفية',
                                      style: ktsLargeText.copyWith(
                                          color: kcPrimaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  verticalSpaceMedium,
                                  oneService("تصاميم احترافية"),
                                  oneService("تحسين تجربة المستخدم"),
                                  oneService("تصميم الهوية البصرية"),
                                  oneService("كتابة محتوى ابداعي"),
                                  oneService("دعم العربية والإنجليزية"),
                                  oneService(
                                      "اختيار مزود خدمة حسب رغبة العميل"),
                                  verticalSpaceLarge,
                                  SizedBox(
                                    height: 40,
                                    width: 120,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: kcSecondaryColor,
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(context, "/",
                                              arguments: true);
                                        },
                                        child: const Text(
                                          "اطلب الخدمة",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Lottie.asset("assets/web2.json", height: 100),
                                  Text("تصميم وبرمجة تطبيقات الويب",
                                      style: ktsLargeText.copyWith(
                                          color: kcPrimaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  verticalSpaceMedium,
                                  oneService("تحليل المنافسين والجمهور"),
                                  oneService("تحليل مميزات التطبيق"),
                                  oneService("تصميم الهوية البصرية"),
                                  oneService("دعم لمختلف الأجهزة"),
                                  oneService("تصميم قاعدة البيانات"),
                                  oneService("تحسين واجهة المستخدم"),
                                  verticalSpaceLarge,
                                  SizedBox(
                                    height: 40,
                                    width: 120,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: kcSecondaryColor,
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(context, "/",
                                              arguments: true);
                                        },
                                        child: const Text(
                                          "اطلب الخدمة",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Lottie.asset("assets/mobileapp.json",
                                      height: 100),
                                  Text('تصميم وبرمجة تطبيقات الجوال',
                                      style: ktsLargeText.copyWith(
                                          color: kcPrimaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  verticalSpaceMedium,
                                  oneService('تحليل مميزات التطبيق'),
                                  oneService('سلاسة الاستخدام'),
                                  oneService("تصميم قاعدة البيانات"),
                                  oneService("تصميم بسيط واحترافي"),
                                  oneService("وقت تحميل أقل وسرعة جيدة"),
                                  oneService("مميزات تزيد التفاعل"),
                                  verticalSpaceLarge,
                                  SizedBox(
                                    height: 40,
                                    width: 120,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: kcSecondaryColor,
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(context, "/",
                                              arguments: true);
                                        },
                                        child: const Text(
                                          "اطلب الخدمة",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 25),
                                    child: Lottie.asset("assets/eree.json",
                                        height: 50),
                                  ),
                                  Text("تطوير نظم إدارة موارد المؤسسة ERP",
                                      style: ktsLargeText.copyWith(
                                          color: kcPrimaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  verticalSpaceMedium,
                                  oneService("نظام حسب الاحتياجات"),
                                  oneService("واجهة مستخدم سهلة"),
                                  oneService("رفع مستوى الأمان"),
                                  oneService("أتمتة المهام الروتينية"),
                                  oneService("زيادة الإنتاجية والأداء"),
                                  oneService("دعم فني احترافي"),
                                  verticalSpaceLarge,
                                  SizedBox(
                                    height: 40,
                                    width: 120,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: kcSecondaryColor,
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(context, "/",
                                              arguments: true);
                                        },
                                        child: const Text(
                                          "اطلب الخدمة",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),

                        ///
                        ///Start your project
                        ///
                        //footer
                        //,
                        verticalSpaceLarge,
                        Footer()
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
