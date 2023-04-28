import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zah_website/app/app.bottomsheets.dart';
import 'package:zah_website/app/app.dialogs.dart';
import 'package:zah_website/app/app.locator.dart';
import 'package:zah_website/app/app.router.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
        builder: (_) => MaterialApp.router(
              debugShowCheckedModeBanner: false,
              scrollBehavior:
                  const ScrollBehavior().copyWith(scrollbars: false),
              // ignore: prefer_const_constructors
              locale: Locale(
                  'ar', 'SA'), // Change the language and region code as needed
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                // Add additional delegates for other packages you're using
              ],
              supportedLocales: const [
                Locale('en', 'US'), // English
                Locale('ar', 'SA'), // Arabic
                // Add additional locales as needed
              ],
              title: 'Stacked Application',
              theme: Theme.of(context).copyWith(
                primaryColor: kcBackgroundColor,
                focusColor: kcPrimaryColor,
                textTheme: GoogleFonts.cairoTextTheme()
                    .apply(bodyColor: kcSecondaryColor),
              ),
              routerDelegate: stackedRouter.delegate(),
              routeInformationParser: stackedRouter.defaultRouteParser(),
            ).animate().fadeIn(
                  delay: const Duration(milliseconds: 50),
                  duration: const Duration(milliseconds: 400),
                ));
  }
}
