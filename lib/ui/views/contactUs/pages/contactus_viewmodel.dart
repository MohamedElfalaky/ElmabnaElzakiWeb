import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zah_website/app/app.bottomsheets.dart';
import 'package:zah_website/app/app.dialogs.dart';
import 'package:zah_website/app/app.locator.dart';
import 'package:zah_website/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../common/app_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsModel extends BaseViewModel {
  static final List<Map<String, dynamic>> contactUsList = [
    {"title": "567830001 966+", "icon": iconCall, "onTap": () {}},
    {"title": "الرياض", "icon": iconLocation, "onTap": () {}},
    {
      "title": "اضفط هنا",
      "icon": iconWhatsapp,
      "onTap": () {
        openWhatsapp();
      }
    },
    {
      "title": "من الاحد الى الخميس من الساعه 9 صباحا - 6 مساء",
      "icon": iconCalendar,
      "onTap": () {}
    },
    {"title": "CC@ZAHASOFT.COM", "icon": iconEmail, "onTap": () {}},
    {
      "title": "السجل التجاري 1010692755",
      "icon": iconCopyright,
      "onTap": () {
        launch(
            "https://eauthenticate.saudibusiness.gov.sa/inquiry?certificateRefID=0000011166");
        //https://eauthenticate.saudibusiness.gov.sa/inquiry?certificateRefID=0000011166
      }
    },
  ];

  static void openWhatsapp() async {
    Uri _url = Uri.parse("https://wa.me/+966567830001"
        // "https://api.whatsapp.com/send/?phone=+966567830001&text&type=phone_number&app_absent=0"
        );
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }
}
