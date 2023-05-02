import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/footer.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zah_website/ui/common/widgets/custom_drawer.dart';
import 'package:zah_website/ui/common/widgets/custom_header.dart';
import 'package:zah_website/ui/views/OurPolicy/ourPolicy_viewmodel.dart';
import 'package:zah_website/ui/views/OurPolicy/sharedPolicy.dart';

class OurPolicyMobile extends ViewModelWidget<OurPolicyModel> {
  OurPolicyMobile({super.key});

  final ScrollController _scrollController = ScrollController();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, OurPolicyModel viewModel) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(scaffoldKey: _scaffoldKey, currentPage: "سياستنا"),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Column(
            children: [
              CustomHeader(
                currentPage: "سياستنا",
                scaffoldKey: _scaffoldKey,
              ),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        verticalSpaceLarge,
                        Text(
                          'سياستنا',
                          style: ktsTitleText.copyWith(
                              fontSize: 24, color: kcSecondaryColor),
                        ),
                        verticalSpaceSmall,
                        //
                        // our OurPolicy
                        //
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 8,
                                vertical: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "زاهـ سوفت تتبع مجموعة من السياسات التي تنظم العمل وتضمن حقوق جميع الأطراف وذلك حسب البنود المذكورة ادناه",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                verticalSpaceLarge,
                                const Text(
                                  "سياسة الخصوصية",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "تلتزم زاهـ سوفت بالحفاظ على السرية التامة لبيانات العميل وفقا لمجموعة من العناصر على النحو التالي:",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                verticalSpaceMedium,
                                ...taakod.map(
                                  (e) => RichText(
                                      text: TextSpan(
                                          style: ktsLargeText,
                                          children: [
                                        const TextSpan(
                                          text: "o  ",
                                          style: TextStyle(
                                              color: kcPrimaryColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text: e,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        )
                                      ])),
                                ),
                                verticalSpaceLarge,
                                const Text(
                                  "سياسة التعاقد وطلب خدمات , عندما يرغب العميل في الاستفادة من إحدى الخدمات التي نقدمها زاهـ سوفت تتبع السياسات التالية:",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                verticalSpaceMedium,
                                ...taltazim.map(
                                  (e) => RichText(
                                      text: TextSpan(
                                          style: ktsLargeText,
                                          children: [
                                        const TextSpan(
                                          text: "o  ",
                                          style: TextStyle(
                                              color: kcPrimaryColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text: e,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        )
                                      ])),
                                ),
                                verticalSpaceLarge,
                                const Text(
                                  "سياسة الشكاوى و العناية بالعميل , في حالات الخلاف تتبع زاهـ سوفت السياسات التالية:",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                verticalSpaceMedium,
                                ...shkwa.map(
                                  (e) => RichText(
                                      text: TextSpan(
                                          style: ktsLargeText,
                                          children: [
                                        const TextSpan(
                                          text: "o  ",
                                          style: TextStyle(
                                              color: kcPrimaryColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text: e,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        )
                                      ])),
                                ),
                              ],
                            )),

                        ///
                        ///Start your project
                        ///
                        //footer
                        //,
                        verticalSpaceLarge,
                        const Footer()
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
