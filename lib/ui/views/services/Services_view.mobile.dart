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

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, ServicesModel viewModel) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(
        currentPage: "خدماتنا",
        scaffoldKey: _scaffoldKey,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Column(
            children: [
              CustomHeader(
                currentPage: "خدماتنا",
                scaffoldKey: _scaffoldKey,
              ),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
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
                                            crossAxisCount: 1,
                                            childAspectRatio: 1,
                                            mainAxisExtent: 250,
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
