import 'package:url_launcher/url_launcher.dart';
import 'package:zah_website/app/app.bottomsheets.dart';
import 'package:zah_website/app/app.dialogs.dart';
import 'package:zah_website/app/app.locator.dart';
import 'package:zah_website/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ServicesModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();

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

  static final ourServiceList = [
    {
      "title": "بيع وشراء العقارات",
      "body":
          "نشتري ونبيع مختلف أنواع العقارات لنسهل على عملائنا وشركائنا الحصول على أفضل العروض العقارية وبالميزانية والخيارات المناسبة لهم...",
      "icon": "assets/s1.png",
    },
    {
      "title": "توثيق العقود",
      "body":
          "نساعد في توثيق عقود البيع والإيجار لضمان حقوق الأطراف المتعاملة، كما نساهم في اتمام تسجيل العقارات والمنازل والشقق والاراضي ...",
      "icon": "assets/s2.png",
    },
    {
      "title": "خدمات المقاولات",
      "body":
          "نشارك الأفراد والمؤسسات الحكومية والشركات الخاصة في تخطيط وتنفيذ الخطط المعمارية عبر خدمات مقاولات من فريق احترافي ...",
      "icon": "assets/s3.png",
    },
    {
      "title": "التقييم العقاري",
      "body":
          "نقيّم الأصول ونجري الدراسات والبحوث العقارية المعتمدة من الجهات الرسمية والمتوافقة مع المعايير المحاسبية الدولية، لكل من المنازل والشقق والاراضي ...",
      "icon": "assets/s4.png",
    },
    {
      "title": "الإعلانات المبوبة",
      "body":
          "نوفر حلول إعلان عقاري احترافي عبر تطبيق للجوال يعمل كوسيط بين البائع والمشتري ما يسمح للأفراد بالإعلان عن عروض بيع العقارات الخاصة بهم واستقبال العروض ...",
      "icon": "assets/s5.png",
    },
  ];
}
