import 'package:stacked_services/stacked_services.dart';
import 'package:zah_website/app/app.router.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/app_constants.dart';
import 'package:zah_website/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zah_website/ui/views/aboutus/pages/aboutus_view.dart';
import 'package:zah_website/ui/views/why/pages/why_view.dart';
import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: kdDesktopMaxContentWidth,
          height: kdDesktopMaxContentHeight,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              verticalSpaceLarge,
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>WhyView()));
                     },
                    child: const Text(
                      'Hello Home , DESKTOP UI!',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  verticalSpaceMedium,
                  MaterialButton(
                    color: Colors.black,
                    onPressed: viewModel.incrementCounter,
                    child: Text(
                      viewModel.counterLabel,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    color: kcDarkGreyColor,
                    child: const Text(
                      'Show Dialog',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: viewModel.showDialog,
                  ),
                  MaterialButton(
                    color: kcDarkGreyColor,
                    child: const Text(
                      'Show Bottom Sheet',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: viewModel.showBottomSheet,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
