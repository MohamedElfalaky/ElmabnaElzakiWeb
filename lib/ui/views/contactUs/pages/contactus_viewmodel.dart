import 'package:flutter/material.dart';
import 'package:zah_website/app/app.bottomsheets.dart';
import 'package:zah_website/app/app.dialogs.dart';
import 'package:zah_website/app/app.locator.dart';
import 'package:zah_website/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ContactUsModel extends BaseViewModel {

 static final List<Map<String, dynamic>> contactUsList=[
    {
      "title":"567830001 966+",
      "icon":Icons.call,
    },
    {
      "title":"الرياض",
      "icon":Icons.add_location_rounded,
    },
   {
     "title":"اضفط هنا",
      "icon":Icons.call_end_outlined,
    },
   {
     "title":"من الاحد الي الخميس من الساعه 9 صباحا - 6 مساء",
      "icon":Icons.calendar_month,
    },
   {
     "title":"CC@ZAHASOFT.COM",
      "icon":Icons.email,
    },
   {
     "title":"السجل التجاري 1010692755",
      "icon":Icons.report_gmailerrorred,
    },
  ];


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
