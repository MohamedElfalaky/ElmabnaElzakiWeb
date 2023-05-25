// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zah_website/ui/common/footer.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
import 'package:zah_website/ui/common/widgets/custom_header.dart';

import '../../../common/app_colors.dart';
import '../../../common/shared_styles.dart';
import '../../home/home_viewmodel.dart';
import '../../home/shared/shared_components.dart';
import '../../services/services_viewmodel.dart';
import 'contactus_viewmodel.dart';

class ContactUsViewDesktop extends ViewModelWidget<ContactUsModel> {
  ContactUsViewDesktop({super.key});
  final _formKey = GlobalKey<FormState>();
  TextEditingController clintName = TextEditingController();
  TextEditingController clintType = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController code = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController details = TextEditingController();
  @override
  Widget build(BuildContext context, ContactUsModel viewModel) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Column(
            children: [
              CustomHeader(currentPage: "تواصل معنا"),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 500,
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                  opacity: 0.5,
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/khada.jpg",
                                  ))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "تواصل معنا",
                                  style: ktsTitleText.copyWith(
                                      color: kcWhite, fontSize: 50),
                                ),
                              ]),
                        ),

                        //

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: kcWhite,
                                          borderRadius:
                                              BorderRadius.circular(14)),
                                      width: double.infinity,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      padding: EdgeInsets.all(12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Color.fromARGB(
                                                255, 12, 89, 152),
                                            size: 80,
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "العنوان",
                                            style: ktsLargeText.copyWith(
                                                color: kcPrimaryColor,
                                                fontSize: 26,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text("السودان , الخرطوم",
                                              style: TextStyle(
                                                color: kcSecondaryColor,
                                                fontSize: 18,
                                              )),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: kcWhite,
                                          borderRadius:
                                              BorderRadius.circular(14)),
                                      width: double.infinity,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      padding: EdgeInsets.all(12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.mail,
                                            color: Color.fromARGB(
                                                255, 12, 89, 152),
                                            size: 80,
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "البريد الالكتروني",
                                            style: ktsLargeText.copyWith(
                                                color: kcPrimaryColor,
                                                fontSize: 26,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text("contact@smartofbuilding.com",
                                              style: TextStyle(
                                                color: kcSecondaryColor,
                                                fontSize: 18,
                                              )),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: kcWhite,
                                          borderRadius:
                                              BorderRadius.circular(14)),
                                      width: double.infinity,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      padding: EdgeInsets.all(12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Color.fromARGB(
                                                255, 12, 89, 152),
                                            size: 80,
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "رقم الهاتف",
                                            style: ktsLargeText.copyWith(
                                                color: kcPrimaryColor,
                                                fontSize: 26,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text("00249912389996",
                                              style: TextStyle(
                                                color: kcSecondaryColor,
                                                fontSize: 18,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: SizedBox(
                                    width: size.width * 0.65,
                                    // color: kcWhite,
                                    child: Form(
                                      key: _formKey,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextFormField(
                                            controller: clintName,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "اسم العميل مطلوب";
                                              }
                                            },
                                            decoration: setTextInputDecoration(
                                                lable: const Text("الاسم *")),
                                          ),
                                          verticalSpaceMedium,
                                          TextFormField(
                                            controller: address,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "البريد الالكتروني مطلوب";
                                              }
                                            },
                                            decoration: setTextInputDecoration(
                                                lable: const Text(
                                                    "البريد الالكتروني *")),
                                          ),
                                          verticalSpaceMedium,
                                          TextFormField(
                                            controller: phone,
                                            validator: (value) {
                                              String pattern =
                                                  r'^\d{9}$'; // Regular expression for 9-digit phone number
                                              RegExp regex =
                                                  new RegExp(pattern);

                                              if (value!.isEmpty) {
                                                return "رقم الهاتف مطلوب";
                                              }
                                              // else if (!regex.hasMatch(value))
                                              //   return 'رقم جوال غير صالح';
                                              else
                                                return null;
                                            },
                                            decoration: setTextInputDecoration(
                                                lable:
                                                    const Text("رقم الجوال *")),
                                          ),
                                          verticalSpaceMedium,
                                          TextFormField(
                                            controller: details,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "الرسالة مطلوبة";
                                              }
                                            },
                                            maxLines: 6,
                                            decoration: setTextInputDecoration(
                                                lable: const Text("رسالتك *")),
                                          ),
                                          verticalSpaceSmall,
                                          SizedBox(
                                            height: 40,
                                            // width: 120,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      kcSecondaryColor,
                                                ),
                                                onPressed: () {
                                                  if (_formKey.currentState!
                                                      .validate()) {
                                                    HomeViewModel
                                                        .sendEmailMessage(
                                                            body: '''
                                              ZahWebSite with Flutter 
                                              Form
                                              Clint Name : ${clintName.text.toString()}
                                              Clint phone : ${phone.text.toString()}
                                              Address  : ${address.text.toString()}
                                              Details  : ${details.text.toString()}
                                          
                                              ''');
                                                  }
                                                },
                                                child: const Text(
                                                  "ارسال",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                flex: 1,
                              )
                            ],
                          ),
                        ),

                        Footer()
                      ],
                    ),
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
