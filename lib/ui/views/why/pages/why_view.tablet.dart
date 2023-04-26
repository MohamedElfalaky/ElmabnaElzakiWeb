import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zah_website/ui/views/why/widgets/why_item.dart';

import 'why_viewmodel.dart';

class WhyViewTablet extends ViewModelWidget<WhyModel> {
  const WhyViewTablet({super.key});

  @override
  Widget build(BuildContext context, WhyModel viewModel) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child:ListView(
              children: [
                verticalSpaceLarge,
                Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("لماذا نحن ؟",style: ktsTitleText.copyWith(fontSize: 20,color: kcPrimaryColor,fontWeight: FontWeight.w200),textAlign: TextAlign.center),
                    verticalSpaceMedium,
                    Text("نقدم خدمات شاملة للتحسين من أداء منشأتك وتعزّز من تواجدها الرقمي",style: ktsTitleText.copyWith(fontSize: 17,color: kcSecondaryColor,fontWeight: FontWeight.w100),textAlign: TextAlign.center),
                    verticalSpaceLarge,
                  ],
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: GridView.builder(
                      itemCount: WhyModel.whyList.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1,
                          mainAxisExtent: 370,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 20),
                      itemBuilder: (BuildContext context, int index) {
                        return WhyItem(
                          title: WhyModel.whyList[index]["title"]!,
                          body: WhyModel.whyList[index]["body"]!,
                          icon: WhyModel.whyList[index]["icon"]!,);
                      }

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
