import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/shared_styles.dart';

class CustomHeader extends StatelessWidget {
  final String currentPage;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const CustomHeader({Key? key, required this.currentPage, this.scaffoldKey})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    _customText(String title, void Function()? onTap) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: InkWell(
          onTap: title != currentPage ? onTap : null,
          child: Text(
            title,
            style: ktsTitleText.copyWith(
                color: currentPage == title ? kcPrimaryColor : Colors.black,
                fontSize: 22),
          ),
        ),
      );
    }

    return ScreenTypeLayout.builder(
      desktop: (_) => Container(
        height: 90,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(children: [
            Row(
              children: [
                InkWell(
                    onTap: () => currentPage == "الرئيسية"
                        ? null
                        : Navigator.pushNamed(context, '/'),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/mainIcon.png",
                        height: 100,
                        width: 100,
                      ),
                    )),
              ],
            ),
            Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _customText("الرئيسية", () {
                  Navigator.pushNamed(context, '/');
                }),
                _customText("خدماتنا", () {
                  Navigator.pushNamed(context, '/our-services');
                }),
                _customText("من نحن", () {
                  Navigator.pushNamed(context, '/about-us');
                }),
                _customText("لماذا نحن", () {
                  Navigator.pushNamed(context, '/why');
                }),
                _customText("تواصل معنا", () {
                  Navigator.pushNamed(context, '/contact-us');
                }),
              ],
            ),
            Spacer()
          ]),
        ),
      ),
      mobile: (_) => Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                InkWell(
                    onTap: () => currentPage == "الرئيسية"
                        ? null
                        : Navigator.pushNamed(context, '/'),
                    child:
                        Image.asset("assets/zahlogo.jpeg", fit: BoxFit.fill)),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'زاهـ',
                          style: ktsRegularText.copyWith(
                              fontWeight: FontWeight.bold,
                              color: kcPrimaryColor)),
                      TextSpan(
                          text: ' سوفت لتقنية المعلومات',
                          style: ktsRegularText.copyWith(
                              fontWeight: FontWeight.bold,
                              color: kcSecondaryColor)
                          //  ktsTitleText.copyWith(
                          //     fontSize: 12, color: kcSecondaryColor),
                          ),
                    ],
                  ),
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  scaffoldKey!.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu))
          ]),
        ),
      ),
    );
  }
}
