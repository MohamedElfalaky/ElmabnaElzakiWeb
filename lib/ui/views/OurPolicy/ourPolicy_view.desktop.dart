// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zah_website/ui/common/widgets/custom_header.dart';
import 'package:zah_website/ui/common/footer.dart';
import 'package:zah_website/ui/views/OurPolicy/ourPolicy_viewmodel.dart';
import 'package:zah_website/ui/views/OurPolicy/sharedPolicy.dart';

class OurPolicyDesktop extends ViewModelWidget<OurPolicyModel> {
  OurPolicyDesktop({super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context, OurPolicyModel viewModel) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Column(
            children: [
              const CustomHeader(currentPage: "سياستنا"),
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
                                    MediaQuery.of(context).size.width / 6,
                                vertical: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "نلتزم في شركة المبنى الذكي بسياسة واضحة من أجل كسب رضاء عملائنا واستغلال التقنية لخدمتهم، لأن نكون الرائدين في مجال العقارات في السودان، عبر:",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
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
