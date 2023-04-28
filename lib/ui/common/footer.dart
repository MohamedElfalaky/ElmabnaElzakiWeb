import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
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
              children: const [
                Text(
                  "الرئيسية",
                  style: TextStyle(color: Colors.white),
                ),
                Text("الخدمات", style: TextStyle(color: Colors.white)),
                Text("من نحن", style: TextStyle(color: Colors.white)),
                Text("لماذا نحن", style: TextStyle(color: Colors.white)),
                Text("لماذا نحن", style: TextStyle(color: Colors.white)),
              ],
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "اطلب خدمتنا",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text("سياستنا", style: TextStyle(color: Colors.white)),
                  Text("السجل التجاري 1010692755",
                      style: TextStyle(color: Colors.white)),
                ]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mail,
                      color: Colors.amber,
                    ),
                    label: const Text("CC@ZAHASOFT.COM",
                        style: TextStyle(color: Colors.white))),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.call,
                      color: Colors.amber,
                    ),
                    label: const Text("567830001 966+",
                        style: TextStyle(color: Colors.white))),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.location_on,
                      color: Colors.amber,
                    ),
                    label: const Text("الرياض",
                        style: TextStyle(color: Colors.white))),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.wifi_calling_3_outlined,
                      color: Colors.amber,
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
              children: const [
                Text(
                  "الرئيسية",
                  style: TextStyle(color: Colors.white),
                ),
                Text("الخدمات", style: TextStyle(color: Colors.white)),
                Text("من نحن", style: TextStyle(color: Colors.white)),
                Text("لماذا نحن", style: TextStyle(color: Colors.white)),
                Text("لماذا نحن", style: TextStyle(color: Colors.white)),
              ],
            ),
            verticalSpaceLarge,
            Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "اطلب خدمتنا",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text("سياستنا", style: TextStyle(color: Colors.white)),
                  Text("السجل التجاري 1010692755",
                      style: TextStyle(color: Colors.white)),
                ]),
            verticalSpaceLarge,
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mail,
                      color: Colors.amber,
                    ),
                    label: const Text("CC@ZAHASOFT.COM",
                        style: TextStyle(color: Colors.white))),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.call,
                      color: Colors.amber,
                    ),
                    label: const Text("567830001 966+",
                        style: TextStyle(color: Colors.white))),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.location_on,
                      color: Colors.amber,
                    ),
                    label: const Text("الرياض",
                        style: TextStyle(color: Colors.white))),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.wifi_calling_3_outlined,
                      color: Colors.amber,
                    ),
                    label: const Text("تواصل معنا",
                        style: TextStyle(color: Colors.white))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
