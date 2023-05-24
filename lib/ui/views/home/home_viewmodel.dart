import 'package:url_launcher/url_launcher.dart';
import 'package:zah_website/app/app.bottomsheets.dart';
import 'package:zah_website/app/app.dialogs.dart';
import 'package:zah_website/app/app.locator.dart';
import 'package:zah_website/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();

  static Future<void> sendEmailMessage({String? body}) async {
    const String email = "contact@smartofbuilding.com";
    // ignore: deprecated_member_use
    if (await canLaunch('mailto:$email?subject=Hello  &body=$body')) {
      // ignore: deprecated_member_use
      await launch('mailto:$email?subject=Hello  &body=$body');
    } else {
      throw 'Could not launch ${"mailto:$email"}';
    }
  }

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
