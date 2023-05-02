import 'package:url_launcher/url_launcher.dart';

import 'package:stacked/stacked.dart';

class OurPolicyModel extends BaseViewModel {
  static Future<void> sendEmailMessage({String? body}) async {
    const String email = "cc@zahsoft.com";
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
}
