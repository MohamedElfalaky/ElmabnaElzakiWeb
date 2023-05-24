import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/app_icons.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
import 'package:zah_website/ui/views/contactUs/pages/contactus_viewmodel.dart';
import 'package:zah_website/ui/views/home/home_viewmodel.dart';

import 'app_constants.dart';

class Footer extends StatelessWidget {
  final GlobalKey? serviceDataKey;
  final GlobalKey? orderDataKey;
  const Footer({super.key, this.serviceDataKey, this.orderDataKey});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ScreenTypeLayout.builder(
        desktop: (_) => Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(color: kcSecondaryColor),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/mainIcon.png",
                      height: 100,
                      width: 100,
                    ),
                    verticalSpaceSmall,
                    Text(
                        "نقدم مجموعة من الحلول للشركات والمؤسسات الحكومية والأفراد في مجال العقارات داخل وخارج السودان",
                        style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      if (ModalRoute.of(context)!.settings.name != "/")
                        Navigator.pushNamed(context, '/');
                    },
                    child: const Text(
                      "الرئيسية",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        if (ModalRoute.of(context)!.settings.name !=
                            "/our-services")
                          Navigator.pushNamed(context, '/our-services');
                      },
                      child: const Text("الخدمات",
                          style: TextStyle(color: Colors.white))),
                  InkWell(
                      onTap: () => Navigator.pushNamed(context, '/about-us'),
                      child: const Text("من نحن",
                          style: TextStyle(color: Colors.white))),
                  InkWell(
                      onTap: () => Navigator.pushNamed(context, "/our-policy"),
                      child: const Text("سياستنا",
                          style: TextStyle(color: Colors.white))),
                  InkWell(
                      onTap: () => Navigator.pushNamed(context, '/contact-us'),
                      child: const Text("تواصل معنا",
                          style: TextStyle(color: Colors.white))),
                ],
              ),
              // Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //   InkWell(
              //     onTap: () {
              //       ModalRoute.of(context)!.settings.name != "/"
              //           ? Navigator.pushNamed(context, '/', arguments: true)
              //           : Scrollable.ensureVisible(
              //               duration: Duration(seconds: 1),
              //               orderDataKey!.currentContext!);
              //     },
              //     child: const Text(
              //       "اطلب خدمتنا",
              //       style: TextStyle(color: Colors.white),
              //     ),
              //   ),
              //   InkWell(
              //       onTap: () => Navigator.pushNamed(context, "/our-policy"),
              //       child: const Text("سياستنا",
              //           style: TextStyle(color: Colors.white))),
              //   InkWell(
              //     onTap: () {
              //       launch(
              //           "https://eauthenticate.saudibusiness.gov.sa/inquiry?certificateRefID=1010692755");
              //       //https://eauthenticate.saudibusiness.gov.sa/inquiry?certificateRefID=0000011166
              //     },
              //     child: const Text("السجل التجاري 1010692755",
              //         style: TextStyle(color: Colors.white)),
              //   ),
              //   const Text("الرقم الضريبي 310646681700003",
              //       style: TextStyle(color: Colors.white)),
              //   const Text("البنك الأهلي السعودي: SA2410000001400006128800",
              //       style: TextStyle(color: Colors.white)),
              //   const Text("شهادة توثيق التجارة الالكترونية   11166",
              //       style: TextStyle(color: Colors.white)),
              //   InkWell(
              //     onTap: () {
              //       launch(
              //           "https://eauthenticate.saudibusiness.gov.sa/inquiry?certificateRefID=1010692755");
              //       //https://eauthenticate.saudibusiness.gov.sa/inquiry?certificateRefID=0000011166
              //     },
              //     child: Image.asset(
              //       "assets/qrCode.png",
              //       height: 120,
              //       width: 120,
              //     ),
              //   ),
              // ]),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton.icon(
                      onPressed: () {
                        HomeViewModel.sendEmailMessage(body: "");
                      },
                      icon: SvgPicture.asset(
                        iconEmail,
                        height: 18,
                      ),
                      label: const Text("contact@smartofbuilding.com",
                          style: TextStyle(color: Colors.white))),
                  TextButton.icon(
                      onPressed: null,
                      icon: SvgPicture.asset(
                        iconCall,
                        height: 18,
                      ),
                      label: const Text("00249912389996",
                          style: TextStyle(color: Colors.white))),
                  TextButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        iconLocation,
                        height: 18,
                      ),
                      label: const Text("الرياض",
                          style: TextStyle(color: Colors.white))),
                  TextButton.icon(
                      onPressed: () {
                        ContactUsModel.openWhatsapp();
                      },
                      icon: SvgPicture.asset(
                        iconWhatsapp,
                        height: 18,
                      ),
                      label: const Text("تواصل معنا",
                          style: TextStyle(color: Colors.white))),
                ],
              ),
            ],
          ),
        ),
        mobile: (_) => Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(color: kcSecondaryColor),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/mainIcon.png",
                        height: 100,
                        width: 100,
                      ),
                      verticalSpaceSmall,
                      Text(
                          "نقدم مجموعة من الحلول للشركات والمؤسسات الحكومية والأفراد في مجال العقارات داخل وخارج السودان",
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (ModalRoute.of(context)!.settings.name != "/")
                      Navigator.pushNamed(context, '/');
                  },
                  child: const Text(
                    "الرئيسية",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                verticalSpaceLarge,
                InkWell(
                    onTap: () {
                      if (ModalRoute.of(context)!.settings.name !=
                          "/our-services")
                        Navigator.pushNamed(context, '/our-services');
                    },
                    child: const Text("الخدمات",
                        style: TextStyle(color: Colors.white))),
                InkWell(
                    onTap: () => Navigator.pushNamed(context, '/about-us'),
                    child: const Text("من نحن",
                        style: TextStyle(color: Colors.white))),
                InkWell(
                    onTap: () => Navigator.pushNamed(context, "/our-policy"),
                    child: const Text("سياستنا",
                        style: TextStyle(color: Colors.white))),
                InkWell(
                    onTap: () => Navigator.pushNamed(context, '/contact-us'),
                    child: const Text("تواصل معنا",
                        style: TextStyle(color: Colors.white))),
                verticalSpaceLarge,
                TextButton.icon(
                    onPressed: () {
                      HomeViewModel.sendEmailMessage(body: "");
                    },
                    icon: SvgPicture.asset(
                      iconEmail,
                      height: 18,
                    ),
                    label: const Text("contact@smartofbuilding.com",
                        style: TextStyle(color: Colors.white))),
                TextButton.icon(
                    onPressed: null,
                    icon: SvgPicture.asset(
                      iconCall,
                      height: 18,
                    ),
                    label: const Text("00249912389996",
                        style: TextStyle(color: Colors.white))),
                TextButton.icon(
                    onPressed: () {
                      ContactUsModel.openWhatsapp();
                    },
                    icon: SvgPicture.asset(
                      iconWhatsapp,
                      height: 18,
                    ),
                    label: const Text("تواصل معنا",
                        style: TextStyle(color: Colors.white))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
