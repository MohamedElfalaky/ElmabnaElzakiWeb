import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'contactus_view.desktop.dart';
import 'contactus_view.tablet.dart';
import 'contactus_view.mobile.dart';
import 'contactus_viewmodel.dart';

class ContactUsView extends StackedView<ContactUsModel> {
  const ContactUsView({super.key});

  @override
  Widget builder(
      BuildContext context,
      ContactUsModel viewModel,
      Widget? child,
      ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const  ContactUsViewMobile(),
      tablet: (_) => const  ContactUsViewTablet(),
      desktop: (_) => const ContactUsViewDesktop(),
    );
  }


  @override
  ContactUsModel viewModelBuilder(
      BuildContext context,
      ) =>
      ContactUsModel();
}
