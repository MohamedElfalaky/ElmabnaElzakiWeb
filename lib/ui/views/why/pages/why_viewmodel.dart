import 'package:zah_website/app/app.bottomsheets.dart';
import 'package:zah_website/app/app.dialogs.dart';
import 'package:zah_website/app/app.locator.dart';
import 'package:zah_website/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class WhyModel extends BaseViewModel {

 static final whyList=[
    {
      "title":"حلول برمجية احترافية",
      "body":"نوفر خدمات احترافية لبرمجة وتصميم نظم إدارة موارد المؤسسة (ERP) والمواقع التعريفية والتجارية وتطبيقات الويب و الهواتف المحمولة. ",
      "icon":"why1.png",
    },
    {
      "title":"التحسين من أداء المنشأة",
      "body":"نوفر برمجيات فعالة لاستغلال موارد المنشأة بالشكل الأمثل وتسريع العمليات المختلفة داخل المنشأة وتقليل التكاليف التشغيلية المصاحبة للنظم الإدارية.",
      "icon":"why2.png",
    },    {
      "title":"دراسة الجمهور والمنافسين بدقة",
      "body":"لتقديم أفضل تجربة مستخدمة ممكّنة نحلّل وندرس السوق بالاطلاع على حاجات ورغبات المستخدمين ونقاط القوة والضعف لدى المنافسين، ونستغلها للتحسين.",
      "icon":"why3.png",
    },    {
      "title":"تصاميم فريدة وسلسة",
      "body":"نؤمن بأن التصميم الفريد والجذاب هو ما يزيد إنتاجية المستخدم ويحسّن من أداء المنشأة بتوفير واجهة مستخدم سلسة، لذلك، هو ضمن أولوياتنا.",
      "icon":"why4.png",
    },    {
      "title":"اختيار مزود خدمة حسب رغبة العميل",
      "body":"نمنح عميلنا الحق الكامل في اختيار مزود خدمة الاستضافة أو استخدام الأدوات أو أختيار وظائف النظام التي يرغب أن تكون جزءًا من مشروعه التقني.",
      "icon":"why5.png",
    },    {
      "title":"أسعار مناسبة للجميع",
      "body":"في الوقت الذي تتزايد فيه أسعار تطوير البرمجيات، نحن في شركة زاه سوفت نتيح خدماتنا بأسعار مناسبة وبأفضل جودة ممكّنة.",
      "icon":"why6.png",
    },    {
      "title":"دعم فني احترافي على مدار اليوم",
      "body":"نوفر دعم فني احترافي للإجابة على استفساراتك وحل كافة المشاكل على مدار اليوم عبر الواتساب أو التواصل من خلال نموذج الاتصال في موقعنا.",
      "icon":"why7.png",
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
