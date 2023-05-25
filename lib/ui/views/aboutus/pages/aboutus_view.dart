import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'aboutus_view.desktop.dart';
import 'aboutus_view.mobile.dart';
import 'aboutus_viewmodel.dart';

class AboutUsView extends StackedView<AboutUsModel> {
  const AboutUsView({super.key});

  @override
  Widget builder(
    BuildContext context,
    AboutUsModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const AboutUsViewMobile(),
      tablet: (_) => AboutUsViewDesktop(),
      desktop: (_) => AboutUsViewDesktop(),
    );
  }

  @override
  AboutUsModel viewModelBuilder(
    BuildContext context,
  ) =>
      AboutUsModel();
}
