import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';

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
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 87, 12, 185)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/'),
                    child: const Text(
                      "الرئيسية",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        // Navigator.pushNamed(
                        //   context,
                        //   '/',
                        //   arguments: serviceDataKey,
                        // );

                        Scrollable.ensureVisible(
                            duration: const Duration(seconds: 1),
                            serviceDataKey!.currentContext!);
                      },
                      child: const Text("الخدمات",
                          style: TextStyle(color: Colors.white))),
                  InkWell(
                      onTap: () => Navigator.pushNamed(context, '/about-us'),
                      child: const Text("من نحن",
                          style: TextStyle(color: Colors.white))),
                  InkWell(
                      onTap: () => Navigator.pushNamed(context, '/why'),
                      child: const Text("لماذا نحن",
                          style: TextStyle(color: Colors.white))),
                  InkWell(
                      onTap: () => Navigator.pushNamed(context, '/contact-us'),
                      child: const Text("تواصل معنا",
                          style: TextStyle(color: Colors.white))),
                ],
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                InkWell(
                  onTap: () => Scrollable.ensureVisible(
                      duration: const Duration(seconds: 1),
                      orderDataKey!.currentContext!),
                  child: const Text(
                    "اطلب خدمتنا",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Text("سياستنا", style: TextStyle(color: Colors.white)),
                const Text("السجل التجاري 1010692755",
                    style: TextStyle(color: Colors.white)),
                const Text("الرقم الضريبي 310646681700003",
                    style: TextStyle(color: Colors.white)),
                const Text("البنك الأهلي السعودي: SA2410000001400006128800",
                    style: TextStyle(color: Colors.white)),
                const Text("شهادة توثيق التجارة الالكترونية   11166",
                    style: TextStyle(color: Colors.white)),
                Image.asset(
                  "qrCode.png",
                  height: 120,
                  width: 120,
                ),
              ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton.icon(
                      onPressed: () {
                        () async {
                          // final Uri _emailLaunchUri = Uri(
                          //   scheme: 'mailto',
                          //   path: 'example@example.com',
                          // );
                          // if (await canLaunch(_emailLaunchUri.toString())) {
                          //   await launch(_emailLaunchUri.toString());
                          // } else {
                          //   throw 'Could not launch $_emailLaunchUri';
                          // }
                        };
                      },
                      icon: SvgPicture.asset(
                        "email.svg",
                        height: 18,
                      ),
                      label: const Text("CC@ZAHASOFT.COM",
                          style: TextStyle(color: Colors.white))),
                  TextButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "phone-call.svg",
                        height: 18,
                      ),
                      label: const Text("567830001 966+",
                          style: TextStyle(color: Colors.white))),
                  TextButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "location.svg",
                        height: 18,
                      ),
                      label: const Text("الرياض",
                          style: TextStyle(color: Colors.white))),
                  TextButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "whatsapp.svg",
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
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 87, 12, 185)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/'),
                    child: const Text(
                      "الرئيسية",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  InkWell(
                      onTap: () => Scrollable.ensureVisible(
                          duration: const Duration(seconds: 1),
                          serviceDataKey!.currentContext!),
                      child: const Text("الخدمات",
                          style: TextStyle(color: Colors.white))),
                  InkWell(
                      onTap: () => Navigator.pushNamed(context, '/about-us'),
                      child: const Text("من نحن",
                          style: TextStyle(color: Colors.white))),
                  InkWell(
                      onTap: () => Navigator.pushNamed(context, '/why'),
                      child: const Text("لماذا نحن",
                          style: TextStyle(color: Colors.white))),
                  InkWell(
                      onTap: () => Navigator.pushNamed(context, '/contact-us'),
                      child: const Text("تواصل معنا",
                          style: TextStyle(color: Colors.white))),
                ],
              ),
              verticalSpaceLarge,
              Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => Scrollable.ensureVisible(
                          duration: const Duration(seconds: 1),
                          orderDataKey!.currentContext!),
                      child: const Text(
                        "اطلب خدمتنا",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Text("سياستنا",
                        style: TextStyle(color: Colors.white)),
                    const Text("السجل التجاري 1010692755",
                        style: TextStyle(color: Colors.white)),
                    const Text("الرقم الضريبي 310646681700003",
                        style: TextStyle(color: Colors.white)),
                    const Text("البنك الأهلي السعودي: SA2410000001400006128800",
                        style: TextStyle(color: Colors.white)),
                    const Text("شهادة توثيق التجارة الالكترونية   11166",
                        style: TextStyle(color: Colors.white)),
                    Image.asset(
                      "qrCode.png",
                      height: 120,
                      width: 120,
                    ),
                  ]),
              verticalSpaceLarge,
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton.icon(
                      onPressed: () {
                        () async {
                          // final Uri _emailLaunchUri = Uri(
                          //   scheme: 'mailto',
                          //   path: 'example@example.com',
                          // );
                          // if (await canLaunch(_emailLaunchUri.toString())) {
                          //   await launch(_emailLaunchUri.toString());
                          // } else {
                          //   throw 'Could not launch $_emailLaunchUri';
                          // }
                        };
                      },
                      icon: SvgPicture.asset(
                        "email.svg",
                        height: 18,
                      ),
                      label: const Text("CC@ZAHASOFT.COM",
                          style: TextStyle(color: Colors.white))),
                  TextButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "phone-call.svg",
                        height: 18,
                      ),
                      label: const Text("567830001 966+",
                          style: TextStyle(color: Colors.white))),
                  TextButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "location.svg",
                        height: 18,
                      ),
                      label: const Text("الرياض",
                          style: TextStyle(color: Colors.white))),
                  TextButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "whatsapp.svg",
                        height: 18,
                      ),
                      label: const Text("تواصل معنا",
                          style: TextStyle(color: Colors.white))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
