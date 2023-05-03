import 'package:carousel_slider/carousel_slider.dart';
import 'package:lottie/lottie.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/footer.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zah_website/ui/common/widgets/custom_drawer.dart';
import 'package:zah_website/ui/common/widgets/custom_header.dart';
import 'package:zah_website/ui/views/home/shared/shared_components.dart';
import 'package:zah_website/ui/views/services/services_viewmodel.dart';

class ServicesMobile extends ViewModelWidget<ServicesModel> {
  ServicesMobile({super.key});
  final CarouselController _controller = CarouselController();
  final _formKey = GlobalKey<FormState>();
  String? _selectedItem;
  final ScrollController _scrollController = ScrollController();

  final List<String> _items = ['فرد', 'مؤسسة', 'شركة', 'شركة ذات شخص واحد'];
  final dataKey = GlobalKey();
  final servicesDataKey = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController clintName = TextEditingController();
  TextEditingController clintType = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController code = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController details = TextEditingController();
  @override
  Widget build(BuildContext context, ServicesModel viewModel) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(scaffoldKey: _scaffoldKey, currentPage: "خدماتنا"),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kcPrimaryColor,
        onPressed: () {
          _scrollController.animateTo(0,
              duration: Duration(milliseconds: 1000), curve: Curves.easeInOut);
        },
        child: Icon(
          Icons.keyboard_arrow_up,
          size: 30,
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                CustomHeader(
                  currentPage: "خدماتنا",
                  scaffoldKey: _scaffoldKey,
                ),
                Expanded(
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
                              horizontal: 50, vertical: 20),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Lottie.asset("assets/web.json", height: 100),
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
                              verticalSpaceLarge,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Lottie.asset("assets/web2.json", height: 100),
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
                              verticalSpaceLarge,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Lottie.asset("assets/mobileapp.json",
                                  //     height: 100),
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
                              verticalSpaceLarge,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Padding(
                                  //   padding: const EdgeInsets.symmetric(
                                  //       vertical: 25),
                                  //   child: Lottie.asset("assets/eree.json",
                                  //       height: 50),
                                  // ),
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
                        verticalSpaceMedium,
                        Footer(
                          orderDataKey: dataKey,
                          serviceDataKey: servicesDataKey,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
