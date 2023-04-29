import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zah_website/ui/common/footer.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
import 'package:zah_website/ui/common/widgets/custom_header.dart';
import 'package:zah_website/ui/views/contactUs/widgets/contactus_item.dart';
import 'package:zah_website/ui/views/why/widgets/why_item.dart';

import 'contactus_viewmodel.dart';

class ContactUsViewDesktop extends ViewModelWidget<ContactUsModel> {
  const ContactUsViewDesktop({super.key});

  @override
  Widget build(BuildContext context, ContactUsModel viewModel) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          // width: kdDesktopMaxContentWidth,
          child: Column(
            children: [
              CustomHeader(currentPage: "تواصل معنا"),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: ListView(
                    children: [
                      verticalSpaceLarge,
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Center(
                            child: SizedBox(
                              width: kdDesktopMaxContentWidth,
                              child: GridView.builder(
                                  itemCount:
                                      ContactUsModel.contactUsList.length,
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          childAspectRatio: 1,
                                          mainAxisExtent: 130,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 50),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ContactUsItem(
                                      title: ContactUsModel.contactUsList[index]
                                          ["title"]!,
                                      icon: ContactUsModel.contactUsList[index]
                                          ["icon"]!,
                                    );
                                  }),
                            ),
                          ),
                        ),
                      ),
                      verticalSpaceLarge,
                      Footer()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
