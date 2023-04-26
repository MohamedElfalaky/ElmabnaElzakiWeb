import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'why_view.desktop.dart';
import 'why_view.tablet.dart';
import 'why_view.mobile.dart';
import 'why_viewmodel.dart';

class WhyView extends StackedView<WhyModel> {
  const WhyView({super.key});

  @override
  Widget builder(
      BuildContext context,
      WhyModel viewModel,
      Widget? child,
      ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const  WhyViewMobile(),
      tablet: (_) => const  WhyViewTablet(),
      desktop: (_) => const WhyViewDesktop(),
    );
  }


  @override
  WhyModel viewModelBuilder(
      BuildContext context,
      ) =>
      WhyModel();
}
