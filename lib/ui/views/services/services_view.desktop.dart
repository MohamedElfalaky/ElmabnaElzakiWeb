import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/footer.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
import 'package:zah_website/ui/common/widgets/custom_header.dart';

import 'services_viewmodel.dart';

class ServicesDesktop extends ViewModelWidget<ServicesModel> {
  ServicesDesktop({super.key});

  final ScrollController _scrollController = ScrollController();
  final servicesDataKey = GlobalKey();

  @override
  Widget build(BuildContext context, ServicesModel viewModel) {
    var size = MediaQuery.of(context).size;
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
                        Container(
                          width: double.infinity,
                          height: 500,
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                  opacity: 0.5,
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/khada.jpg",
                                  ))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "خدماتنا",
                                  style: ktsTitleText.copyWith(
                                      color: kcWhite, fontSize: 50),
                                ),
                              ]),
                        ),

                        //
                        // our services
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width / 7, vertical: 40),
                          width: double.infinity,
                          // height: 550,
                          decoration: const BoxDecoration(
                            color: kcWhite,
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Center(
                                  child: Text(
                                    "خدماتنا",
                                    style: ktsLargeText
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: kcPrimaryColor,
                                        )
                                        .copyWith(fontSize: 30),
                                  ),
                                ),
                                verticalSpaceSmall,
                                GridView.builder(
                                    itemCount:
                                        ServicesModel.ourServiceList.length,
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            childAspectRatio: 1,
                                            mainAxisExtent: 300,
                                            crossAxisSpacing: 5,
                                            mainAxisSpacing: 20),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                ServicesModel
                                                        .ourServiceList[index]
                                                    ["icon"]!,
                                                height: 100),
                                            verticalSpaceSmall,
                                            Text(
                                                ServicesModel
                                                        .ourServiceList[index]
                                                    ["title"]!,
                                                style: ktsLargeText.copyWith(
                                                    color: kcPrimaryColor,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text(
                                                ServicesModel
                                                        .ourServiceList[index]
                                                    ["body"]!,
                                                style: ktsLargeText.copyWith(
                                                  color: kcBlack,
                                                  fontSize: 14,
                                                )),
                                          ],
                                        ),
                                      );
                                      // WhyItem(
                                      //   title: WhyModel.whyList[index]["title"]!,
                                      //   body: WhyModel.whyList[index]["body"]!,
                                      //   icon: WhyModel.whyList[index]["icon"]!,
                                      // );
                                    }),
                              ]),
                        ),

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
