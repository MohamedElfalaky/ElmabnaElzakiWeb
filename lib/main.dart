import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zah_website/app/app.bottomsheets.dart';
import 'package:zah_website/app/app.dialogs.dart';
import 'package:zah_website/app/app.locator.dart';
import 'package:zah_website/app/app.router.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:zah_website/ui/views/aboutus/pages/aboutus_view.dart';
import 'package:zah_website/ui/views/contactUs/pages/contactus_view.dart';
import 'package:zah_website/ui/views/home/home_view.dart';
import 'package:zah_website/ui/views/why/pages/why_view.dart';

void main() {
  setPathUrlStrategy();
  setupLocator(
    stackedRouter: stackedRouter,
  );
  setupDialogUi();
  setupBottomSheetUi();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
        preferDesktop: true,
        builder: (_) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'ZahSoft Web',
              theme: Theme.of(context).copyWith(
                primaryColor: kcBackgroundColor,
                focusColor: kcPrimaryColor,
                textTheme: GoogleFonts.cairoTextTheme()
                    .apply(bodyColor: kcSecondaryColor),
              ),
              initialRoute: '/',
              routes: {
                '/': (context) => HomeView(),
                '/about-us': (context) => AboutUsView(),
                '/why': (context) => WhyView(),
                '/contact-us': (context) => ContactUsView(),
              },
              // routerDelegate: stackedRouter.delegate(),
              // routeInformationParser: stackedRouter.defaultRouteParser(),
            ).animate().fadeIn(
                  delay: const Duration(milliseconds: 50),
                  duration: const Duration(milliseconds: 400),
                ));
  }
}
