import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zah_website/ui/common/widgets/custom_header.dart';
import 'package:zah_website/ui/views/contactUs/widgets/contactus_item.dart';
import 'package:zah_website/ui/views/why/widgets/why_item.dart';

import 'contactus_viewmodel.dart';

class ContactUsViewTablet extends ViewModelWidget<ContactUsModel> {
  const ContactUsViewTablet({super.key});

  @override
  Widget build(BuildContext context, ContactUsModel viewModel) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child:Column(
              children: [
                CustomHeader(currentPage: "تواصل معنا"),
                Expanded(
                  child: ListView(
                    children: [
                      verticalSpaceLarge,
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: GridView.builder(
                            itemCount: ContactUsModel.contactUsList.length,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1,
                                mainAxisExtent: 150,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 20),
                            itemBuilder: (BuildContext context, int index) {
                              return ContactUsItem(
                                title: ContactUsModel.contactUsList[index]["title"]!,
                                icon:  ContactUsModel.contactUsList[index]["icon"]!,);
                            }

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
