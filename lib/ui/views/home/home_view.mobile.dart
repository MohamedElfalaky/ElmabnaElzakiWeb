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

import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  HomeViewMobile({super.key});
  final CarouselController _controller = CarouselController();
  final _formKey = GlobalKey<FormState>();
  String? _selectedItem;
  final ScrollController _scrollController = ScrollController();

  final List<String> _items = ['فرد', 'مؤسسة', 'شركة', 'شركة ذات شخص واحد'];
  final dataKey = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(scaffoldKey: _scaffoldKey, currentPage: "الرئيسية"),
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
            child: SizedBox(
              // padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomHeader(
                      currentPage: "الرئيسية",
                      scaffoldKey: _scaffoldKey,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "مرحباً بك",
                            style: ktsTitleText.copyWith(
                                color: kcPrimaryColor, fontSize: 30),
                          ),
                          verticalSpaceSmall,
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'زاهـ',
                                    style: ktsTitleText.copyWith(
                                        color: kcPrimaryColor, fontSize: 30)),
                                TextSpan(
                                  text: ' سوفت لتقنية المعلومات',
                                  style: ktsTitleText.copyWith(
                                      fontSize: 30, color: kcSecondaryColor),
                                ),
                              ],
                            ),
                          ),
                          verticalSpaceLarge,
                          const Text(
                            "فريق زاهــ الذي يجمع بين الخبرة والمهارة\nنقدم مجموعة شاملة من الخدمات الداعمة لتحقيق أهدافكم الرقمية",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Image.asset("helloSah.png")
                        ],
                      ),
                    ),
                    verticalSpaceLarge,
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'لماذا تختار زاهــ',
                              style: ktsTitleText.copyWith(
                                  color: kcPrimaryColor, fontSize: 30)),
                          TextSpan(
                            text: ' سوفت ؟',
                            style: ktsTitleText.copyWith(
                                fontSize: 30, color: kcSecondaryColor),
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceSmall,
                    const Text(
                      "لأننا  نواكب المستقبل ; لنوفر نظم وبرمجيات فعالة في حياة كل منشأة",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    verticalSpaceSmall,

                    //
                    // Carosel
                    //

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: CarouselSlider(
                        carouselController: _controller,
                        options: CarouselOptions(
                          height: 250.0,
                          viewportFraction: 0.7,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 4),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 1000),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.2,
                        ),
                        items: whyZahSoftMobile.map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Center(
                                child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image.asset(
                                            i["pic"],
                                            height: 50,
                                          ),
                                          verticalSpaceMedium,
                                          Text(
                                            i["name"],
                                            style:
                                                const TextStyle(fontSize: 16.0),
                                          ),
                                        ],
                                      ),
                                    )),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    verticalSpaceLarge,
                    Text(
                      'خدماتنا',
                      style: ktsTitleText.copyWith(
                          fontSize: 30, color: kcSecondaryColor),
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
                              Lottie.asset("web.json", height: 50),
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
                              oneService("اختيار مزود خدمة حسب رغبة العميل"),
                              verticalSpaceLarge,
                              SizedBox(
                                height: 40,
                                width: 120,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: kcSecondaryColor,
                                    ),
                                    onPressed: () {
                                      Scrollable.ensureVisible(
                                          duration: Duration(seconds: 1),
                                          dataKey.currentContext!);
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
                              Lottie.asset("web2.json", height: 65),
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
                                      Scrollable.ensureVisible(
                                          duration: Duration(seconds: 1),
                                          dataKey.currentContext!);
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
                              Lottie.asset("mobileapp.json", height: 50),
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
                                      Scrollable.ensureVisible(
                                          duration: Duration(seconds: 1),
                                          dataKey.currentContext!);
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
                              Lottie.asset("eree.json", height: 50),
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
                                      Scrollable.ensureVisible(
                                          duration: Duration(seconds: 1),
                                          dataKey.currentContext!);
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
                    verticalSpaceMassive,
                    Text(
                      'ابدأ مشروعك من هنا',
                      style: ktsTitleText.copyWith(
                          fontSize: 30, color: kcSecondaryColor),
                      key: dataKey,
                    ),
                    verticalSpaceSmall,

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 70, vertical: 40),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // ClipRRect(
                          //   child: Image.asset("contactUs.png"),
                          //   borderRadius: BorderRadius.circular(40),
                          // ),
                          // verticalSpaceLarge,
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'معلومات العميل',
                                  style: ktsTitleText.copyWith(
                                      fontSize: 30, color: kcSecondaryColor),
                                ),
                                verticalSpaceLarge,
                                TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "اسم العميل مطلوب";
                                    }
                                  },
                                  decoration: setTextInputDecoration(
                                      lable: const Text("اسم العميل *")),
                                ),
                                verticalSpaceMedium,
                                DropdownButtonFormField<String>(
                                    value: _selectedItem,
                                    items: _items.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (String? value) {
                                      _selectedItem = value;
                                    },
                                    validator: (value) {
                                      if (value == null) {
                                        return 'لم يتم الاختيار';
                                      }
                                      return null;
                                    },
                                    decoration: setTextInputDecoration(
                                        lable:
                                            const Text("الأهلية القانونية *"))),
                                verticalSpaceMedium,
                                TextFormField(
                                  validator: (value) {
                                    String pattern =
                                        r'^\d{9}$'; // Regular expression for 10-digit phone number
                                    RegExp regex = new RegExp(pattern);

                                    if (value!.isEmpty) {
                                      return "رقم الهاتف مطلوب";
                                    } else if (!regex.hasMatch(value))
                                      return 'رقم جوال غير صالح';
                                    else
                                      return null;
                                  },
                                  decoration: setTextInputDecoration(
                                      lable: const Text("رقم الجوال *")),
                                ),
                                verticalSpaceMedium,
                                TextFormField(
                                  decoration: setTextInputDecoration(
                                      lable: const Text("كود الخصم ")),
                                ),
                                verticalSpaceLarge,
                                Text(
                                  "عنوان المشروع",
                                  style: ktsTitleText.copyWith(
                                      fontSize: 30, color: kcSecondaryColor),
                                ),
                                verticalSpaceMedium,
                                TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "عنوان المشروع مطلوب";
                                    }
                                  },
                                  decoration: setTextInputDecoration(
                                      lable: const Text("عنوان المشروع *")),
                                ),
                                verticalSpaceMedium,
                                TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "وصف المشروع مطلوب";
                                    }
                                  },
                                  maxLines: 6,
                                  decoration: setTextInputDecoration(
                                      lable: const Text("وصف المشروع *")),
                                ),
                                verticalSpaceSmall,
                                SizedBox(
                                  height: 40,
                                  width: 120,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: kcSecondaryColor,
                                      ),
                                      onPressed: () {
                                        if (_formKey.currentState!
                                            .validate()) {}
                                      },
                                      child: const Text(
                                        "ارسل الطلب",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //footer
                    //
                    Footer()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
