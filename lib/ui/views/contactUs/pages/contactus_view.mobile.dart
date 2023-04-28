import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/footer.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zah_website/ui/common/widgets/custom_drawer.dart';
import 'package:zah_website/ui/common/widgets/custom_header.dart';
import 'package:zah_website/ui/views/aboutus/widgets/about_item.dart';
import 'package:zah_website/ui/views/aboutus/widgets/about_item_features.dart';
import 'package:zah_website/ui/views/contactUs/widgets/contactus_item.dart';
import 'package:zah_website/ui/views/why/widgets/why_item.dart';

import 'contactus_viewmodel.dart';

class ContactUsViewMobile extends ViewModelWidget<ContactUsModel> {
  const ContactUsViewMobile({super.key});

  @override
  Widget build(BuildContext context, ContactUsModel viewModel) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer:
          CustomDrawer(scaffoldKey: _scaffoldKey, currentPage: "تواصل معنا"),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CustomHeader(
                  currentPage: "تواصل معنا", scaffoldKey: _scaffoldKey),
              Expanded(
                child: ListView(
                  children: [
                    verticalSpaceLarge,
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: GridView.builder(
                            itemCount: ContactUsModel.contactUsList.length,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                    childAspectRatio: 1,
                                    mainAxisExtent: 150,
                                    crossAxisSpacing: 5,
                                    mainAxisSpacing: 20),
                            itemBuilder: (BuildContext context, int index) {
                              return ContactUsItem(
                                title: ContactUsModel.contactUsList[index]
                                    ["title"]!,
                                icon: ContactUsModel.contactUsList[index]
                                    ["icon"]!,
                              );
                            }),
                      ),
                    ),
                    verticalSpaceLarge,
                    Footer()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
