import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:zah_website/ui/views/OurPolicy/ourPolicy_view.mobile.dart';
import 'package:zah_website/ui/views/OurPolicy/ourPolicy_viewmodel.dart';

import 'ourPolicy_view.desktop.dart';

class OurPolicyView extends StackedView<OurPolicyModel> {
  const OurPolicyView({super.key});

  @override
  Widget builder(
    BuildContext context,
    OurPolicyModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => OurPolicyMobile(),
      tablet: (_) => OurPolicyDesktop(),
      desktop: (_) => OurPolicyDesktop(),
    );
  }

  @override
  OurPolicyModel viewModelBuilder(
    BuildContext context,
  ) =>
      OurPolicyModel();
}
