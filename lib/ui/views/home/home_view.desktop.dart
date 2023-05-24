import 'package:carousel_slider/carousel_slider.dart';
import 'package:lottie/lottie.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/app_constants.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zah_website/ui/common/widgets/custom_header.dart';
import 'package:zah_website/ui/common/footer.dart';
import 'package:zah_website/ui/common/widgets/elev_button.dart';
import 'package:zah_website/ui/views/home/shared/shared_components.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  final bool? navToOrder;

  HomeViewDesktop({super.key, this.navToOrder});

  final CarouselController _controller = CarouselController();
  final _formKey = GlobalKey<FormState>();
  String? _selectedItem;
  final dataKey = GlobalKey();

  final ScrollController _scrollController = ScrollController();

  final List<String> _items = ['فرد', 'مؤسسة', 'شركة', 'شركة ذات شخص واحد'];

  TextEditingController clintName = TextEditingController();
  TextEditingController clintType = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController code = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController details = TextEditingController();

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    final size = MediaQuery.of(context).size;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (dataKey.currentContext != null &&
          ModalRoute.of(context)!.settings.arguments == true) {
        Scrollable.ensureVisible(
            duration: const Duration(seconds: 1), dataKey.currentContext!);
      }
    });
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Column(
            children: [
              const CustomHeader(currentPage: "الرئيسية"),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 800,
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                  opacity: 0.85,
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/hero-section-min.jpeg",
                                  ))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "شركة المبنى الذكي",
                                  style: ktsTitleText.copyWith(
                                      color: kcWhite, fontSize: 50),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  "حلول المؤسسات الحكومية و الشركات والأفراد في مجال العقارات داخل وخارج السودان",
                                  style: ktsTitleText.copyWith(
                                      color: kcWhite, fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 60,
                                ),
                                SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: kcPrimaryColor,
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        "تواصل معنا الان",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                )
                              ]),
                        ),

                        verticalSpaceMassive,

                        ///
                        ///
                        ///
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width / 7,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "من نحن",
                                      style: ktsLargeText.copyWith(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "نقدم مجموعة من الحلول للشركات والمؤسسات الحكومية والأفراد في مجال العقارات داخل وخارج السودان، تشمل التقييم العقاري وتوثيق العقود وبيع وشراء الشقق والمنازل والمحلات التجارية والأراضي السكنية والزراعية والتسويق الاحترافي للعقارات. لدينا توجه جديد بتوظيف التكنولوجيا في الخدمات العقارية والمساهمة لإحداث تغيير في السوق العقاري في السودان.",
                                      style: ktsRegularText,
                                    ),
                                    verticalSpaceMedium,
                                    const myElevButton(
                                      txt: "قراءة المزيد",
                                    )
                                  ],
                                ),
                              ),
                              horizontalSpaceLarge,
                              Expanded(
                                flex: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: Image.asset(
                                    "assets/house1.jpeg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        verticalSpaceMassive,
                        ////
                        ///
                        ///
                        ///
                        Container(
                          width: double.infinity,
                          height: 550,
                          decoration: const BoxDecoration(
                            color: kcSecondaryColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width / 7, vertical: 40),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Center(
                                    child: Text(
                                      "خدماتنا",
                                      style: ktsLargeText
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: kcPrimaryColor,
                                          )
                                          .copyWith(fontSize: 25),
                                    ),
                                  ),
                                  verticalSpaceSmall,
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Center(
                                                child: Image.asset(
                                                    "assets/ser1.png",
                                                    height: 100),
                                              ),
                                              verticalSpaceSmall,
                                              Text('التقييم العقاري',
                                                  style: ktsLargeText.copyWith(
                                                      color: kcWhite,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(
                                                  "نقيّم الأصول ونجري الدراسات والبحوث العقارية المعتمدة من الجهات الرسمية والمتوافقة مع المعايير المحاسبية الدولية......",
                                                  style: ktsLargeText.copyWith(
                                                    color: kcWhite,
                                                    fontSize: 14,
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Center(
                                                child: Image.asset(
                                                    "assets/serv2.png",
                                                    alignment: Alignment.center,
                                                    height: 100),
                                              ),
                                              verticalSpaceSmall,
                                              Text('بيع وشراء العقارات',
                                                  style: ktsLargeText.copyWith(
                                                      color: kcWhite,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(
                                                  "نشتري ونبيع مختلف أنواع العقارات لنسهل على عملائنا وشركائنا الحصول على أفضل العروض العقارية وبالميزانية والخيارات المناسبة لهم ....",
                                                  style: ktsLargeText.copyWith(
                                                    color: kcWhite,
                                                    fontSize: 14,
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Center(
                                                child: Image.asset(
                                                    "assets/serv3.png",
                                                    alignment: Alignment.center,
                                                    height: 100),
                                              ),
                                              verticalSpaceSmall,
                                              Text('توثيق العقود',
                                                  style: ktsLargeText.copyWith(
                                                      color: kcWhite,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(
                                                  "نساعد في توثيق عقود البيع والإيجار لضمان حقوق الأطراف المتعاملة، كما نساهم في اتمام تسجيل العقارات والمنازل والشقق ....",
                                                  style: ktsLargeText.copyWith(
                                                    color: kcWhite,
                                                    fontSize: 14,
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  verticalSpaceSmall,
                                  const Center(
                                    child: myElevButton(
                                      txt: "مشاهدة جميع الخدمات",
                                    ),
                                  )
                                ]),
                          ),
                        ),

                        verticalSpaceMassive,

                        ///
                        ///
                        ///
                        ///

                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width / 7,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ما يُميزنا",
                                      style: ktsLargeText.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: kcPrimaryColor,
                                          fontSize: 25),
                                    ),
                                    Text(
                                      "نستغل التكنولوجيا لتوفير أفضل الخدمات العقارية لعملائنا حاليًا ومستقبلًا.",
                                      style:
                                          ktsRegularText.copyWith(fontSize: 20),
                                    ),
                                    verticalSpaceMedium,
                                  ],
                                ),
                              ),
                              horizontalSpaceLarge,
                              Expanded(
                                  flex: 2,
                                  child: Image.asset("assets/maYoma.png")

                                  // GridView.builder(
                                  //   padding: EdgeInsets.zero,

                                  //   itemCount: 13,
                                  //   shrinkWrap: true,
                                  //   gridDelegate:
                                  //       SliverGridDelegateWithFixedCrossAxisCount(
                                  //           childAspectRatio: 2,
                                  //           crossAxisCount: 3),
                                  //   // SliverGridDelegateWithFixedCrossAxisCount(
                                  //   //     crossAxisCount: 10,),
                                  //   itemBuilder: (context, index) => Column(
                                  //     children: [
                                  //       Icon(Icons.search),
                                  //       Text("hello grid"),
                                  //     ],
                                  //   ),
                                  // )

                                  ),
                            ],
                          ),
                        ),
                        verticalSpaceMassive,

                        ////
                        ///
                        ///
                        ///

                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width / 7,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "قريباً..",
                                      style: ktsLargeText.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: kcPrimaryColor,
                                          fontSize: 25),
                                    ),
                                    verticalSpaceMedium,
                                    Image.asset(
                                      "assets/googlePlay.png",
                                    )
                                  ],
                                ),
                              ),
                              horizontalSpaceLarge,
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 120),
                                    child: Image.asset(
                                      "assets/mob.png",
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        verticalSpaceMassive,

                        ///
                        ///
                        ///

                        Container(
                          width: double.infinity,
                          // height: 550,
                          decoration: const BoxDecoration(
                            color: kcSecondaryColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width / 7, vertical: 40),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Text(
                                      "هل تبحث عن مساعدة ؟",
                                      style: ktsLargeText
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: kcPrimaryColor,
                                          )
                                          .copyWith(fontSize: 25),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      "احصل على استشارتك الآن",
                                      style: ktsLargeText
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: kcWhite,
                                          )
                                          .copyWith(fontSize: 35),
                                    ),
                                  ),
                                  verticalSpaceMedium,
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 40),
                          child: SizedBox(
                            width: size.width * 0.65,
                            // color: kcWhite,
                            child: Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  verticalSpaceLarge,
                                  TextFormField(
                                    controller: clintName,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "اسم العميل مطلوب";
                                      }
                                    },
                                    decoration: setTextInputDecoration(
                                        lable: const Text("الاسم *")),
                                  ),
                                  verticalSpaceMedium,
                                  TextFormField(
                                    controller: address,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "البريد الالكتروني مطلوب";
                                      }
                                    },
                                    decoration: setTextInputDecoration(
                                        lable:
                                            const Text("البريد الالكتروني *")),
                                  ),
                                  verticalSpaceMedium,
                                  TextFormField(
                                    controller: phone,
                                    validator: (value) {
                                      String pattern =
                                          r'^\d{9}$'; // Regular expression for 9-digit phone number
                                      RegExp regex = new RegExp(pattern);

                                      if (value!.isEmpty) {
                                        return "رقم الهاتف مطلوب";
                                      }
                                      // else if (!regex.hasMatch(value))
                                      //   return 'رقم جوال غير صالح';
                                      else
                                        return null;
                                    },
                                    decoration: setTextInputDecoration(
                                        lable: const Text("رقم الجوال *")),
                                  ),
                                  verticalSpaceMedium,
                                  TextFormField(
                                    controller: details,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "الرسالة مطلوبة";
                                      }
                                    },
                                    maxLines: 6,
                                    decoration: setTextInputDecoration(
                                        lable: const Text("رسالتك *")),
                                  ),
                                  verticalSpaceSmall,
                                  SizedBox(
                                    height: 40,
                                    // width: 120,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: kcSecondaryColor,
                                        ),
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            HomeViewModel.sendEmailMessage(
                                                body: '''
                                            ZahWebSite with Flutter 
                                            Form
                                            Clint Name : ${clintName.text.toString()}
                                            Clint phone : ${phone.text.toString()}
                                            Address  : ${address.text.toString()}
                                            Details  : ${details.text.toString()}
                                        
                                            ''');
                                          }
                                        },
                                        child: const Text(
                                          "ارسال",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        ///
                        ///
                        ///

                        //footer
                        //
                        Footer(
                          orderDataKey: dataKey,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kcPrimaryColor,
        onPressed: () {
          _scrollController.animateTo(0,
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeInOut);
        },
        child: const Icon(
          Icons.keyboard_arrow_up,
          size: 30,
        ),
      ),
    );
  }
}
