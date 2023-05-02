import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:zah_website/ui/views/services/services_view.mobile.dart';

import 'services_view.desktop.dart';
import 'services_viewmodel.dart';

class ServicesView extends StackedView<ServicesModel> {
  const ServicesView({super.key});

  @override
  Widget builder(
    BuildContext context,
    ServicesModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => ServicesMobile(),
      tablet: (_) => ServicesDesktop(),
      desktop: (_) => ServicesDesktop(),
    );
  }

  @override
  ServicesModel viewModelBuilder(
    BuildContext context,
  ) =>
      ServicesModel();
}
