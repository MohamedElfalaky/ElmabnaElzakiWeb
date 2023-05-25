import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/footer.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
import 'package:zah_website/ui/common/widgets/custom_drawer.dart';
import 'package:zah_website/ui/common/widgets/custom_header.dart';

import 'aboutus_viewmodel.dart';

class AboutUsViewMobile extends ViewModelWidget<AboutUsModel> {
  const AboutUsViewMobile({super.key});

  @override
  Widget build(BuildContext context, AboutUsModel viewModel) {
    final dataKey = GlobalKey();

    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(
        currentPage: "من نحن",
        scaffoldKey: _scaffoldKey,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Column(
            children: [
              CustomHeader(
                currentPage: "من نحن",
                scaffoldKey: _scaffoldKey,
              ),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    // controller: _scrollController,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 800,
                          padding: EdgeInsets.symmetric(horizontal: 30),
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
                                  "من نحن ؟",
                                  style: ktsTitleText.copyWith(
                                      color: kcWhite, fontSize: 50),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  "نقدم مجموعة من الحلول للشركات والمؤسسات الحكومية والأفراد في مجال العقارات داخل وخارج السودان",
                                  style: ktsTitleText.copyWith(
                                      color: kcWhite, fontSize: 20),
                                ),
                              ]),
                        ),

                        // verticalSpaceMassive,

                        ///
                        ///
                        ///
                        ///
                        /// قصتنا
                        ///
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width / 7, vertical: 40),
                          decoration: const BoxDecoration(
                            color: kcSecondaryColor,
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    "قصتنا",
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
                                    "شركة المبنى الذكي هي شركة عقارية أُسَّست لحل مشكلة أو إزالة المعاناة التي صاحبت مالك الشركة عند سفره إلى السودان، والمتمثلة في الحصول على فرصة أو معلومات استئجار عقار. حيث كان صاحب الشركة مواطن سوداني مغترب في المملكة العربية السعودية من أجل العمل، وحصل على عطلة للذهاب إلى السودان لزيارة وتمضية بعض الوقت مع الأحباب والأهل. لكنه واجه مشكلة وهي أنه كان من الصعب عليه إيجاد عقار للإيجار أو حتى معلومة عن طريقة استئجار عقار في السودان. كانت طريقة العرض بدائية ونحن هنا لتطويرالقطاع ليتلائم مع القطاعات العقارية في الشرق الاوسط والعالمية وبعد تعب ومشقة استأجر العقار! فاكتشف مشكلة حقيقية في سوق العقار بالسودان، وبعد رجوعه إلى المملكة العربية السعودية بدأ في التفكير لابتكار حل لهذه المشاكل وطرأت عليه فكرة تأسيس شركة المبنى الذكي.",
                                    style: ktsLargeText
                                        .copyWith(
                                          color: kcWhite,
                                        )
                                        .copyWith(fontSize: 18),
                                  ),
                                ),
                                verticalSpaceMedium,
                              ]),
                        ),
                        verticalSpaceLarge,

                        /// رسالتنا

                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width / 7,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "رسالتنا",
                                style: ktsLargeText.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: kcPrimaryColor,
                                    fontSize: 30),
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.check_circle_outline_outlined,
                                    color: Color.fromARGB(255, 8, 103, 181),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "تقديم خدمات عقارية ذات جودة عالية.",
                                      style:
                                          ktsRegularText.copyWith(fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.check_circle_outline_outlined,
                                    color: Color.fromARGB(255, 8, 103, 181),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "المساهمة بقوة في حل مشاكل عملائنا من مؤسسات حكومية وشركات وبنوك والهيئات الدبلوماسية والمنظمات الدولية والأفراد عند شراء أو استئجار عقار.",
                                      style:
                                          ktsRegularText.copyWith(fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.check_circle_outline_outlined,
                                    color: Color.fromARGB(255, 8, 103, 181),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "تسهيل عملية بيع وشراء العقارات وجعلها أكثر سلاسة.",
                                      style:
                                          ktsRegularText.copyWith(fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.check_circle_outline_outlined,
                                    color: Color.fromARGB(255, 8, 103, 181),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "اتاحة الفرصة للأفراد لإيجاد طريقة سهلة للإعلان عن عروض البيع وانتقاء العقار المناسب لهم.",
                                      style:
                                          ktsRegularText.copyWith(fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                              verticalSpaceMedium,
                              Image.asset("assets/resalatna.png"),
                            ],
                          ),
                        ),
                        verticalSpaceMassive,

                        //هدفنا

                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width / 7,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "هذفنا",
                                style: ktsLargeText.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: kcPrimaryColor,
                                    fontSize: 30),
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              Text(
                                "توفير خدمات عقارية ذات جودة عالية تسهل على العملاء والمؤسسات الحكومية والشركات والهيئات الدبلوماسية والمنظمات الدولية العثور على مجموعة من الخيارات العقارية وتقييم العقارات الخاصة بهم وتخطيط وتنظيم الإجراءات من قبل فريق متخصص. مع الرغبة الملحة في تطوير قطاع العقارات وريادة السوق.",
                                style: ktsRegularText.copyWith(fontSize: 18),
                              ),
                              verticalSpaceMedium,
                              Image.asset("assets/hadafna.png"),
                            ],
                          ),
                        ),

                        verticalSpaceMassive,

                        // رؤيتنا وقيمنا

                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width / 7,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/vision.png",
                                height: 150,
                                width: 150,
                              ),
                              verticalSpaceMedium,
                              Text(
                                "رؤيتنا",
                                style: ktsLargeText.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: kcPrimaryColor,
                                    fontSize: 30),
                              ),
                              verticalSpaceMedium,
                              Text(
                                "أن تكون شركة المبنى الذكي الأكثر تميزًا في مجال العقارات باستغلال التكنولوجيا والارتقاء بالخدمات إلى مستوى احترافي للباحثين عن العقارات.",
                                style: ktsRegularText.copyWith(fontSize: 18),
                              ),
                              verticalSpaceLarge,
                              Image.asset("assets/rate.png",
                                  height: 150, width: 150),
                              verticalSpaceMedium,
                              Text(
                                "قيمنا",
                                style: ktsLargeText.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: kcPrimaryColor,
                                    fontSize: 30),
                              ),
                              const SizedBox(
                                height: 18,
                              ),

                              ///1
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.check_circle_outline_outlined,
                                    color: Color.fromARGB(255, 8, 103, 181),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "نؤمن بأنّ نزاهة خدماتنا ستحقق النجاح لكل من الشركة وعملائها .",
                                      style:
                                          ktsRegularText.copyWith(fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),

                              ///2

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.check_circle_outline_outlined,
                                    color: Color.fromARGB(255, 8, 103, 181),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "نقدم وندير أعمالنا التجارية وفقًا للقانون واللوائح المنظمة.",
                                      style:
                                          ktsRegularText.copyWith(fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),

                              ///3
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.check_circle_outline_outlined,
                                    color: Color.fromARGB(255, 8, 103, 181),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "سعينا الدؤوب لتحقيق النجاح المشترك وزيادة ترابطنا مع عملائنا",
                                      style:
                                          ktsRegularText.copyWith(fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),

                              ///
                              ///4
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.check_circle_outline_outlined,
                                    color: Color.fromARGB(255, 8, 103, 181),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "نحث جميع الأطراف على استغلال التكنولوجيا لتحقيق التميز العقاري",
                                      style:
                                          ktsRegularText.copyWith(fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                        ),
                        verticalSpaceMassive,

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
    );
  }
}
