import 'package:petdopt/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:petdopt/core/app_export.dart';

class Iphone1415ProMaxTwoScreen extends StatelessWidget {
  const Iphone1415ProMaxTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 129.v,
                          width: 390.h,
                          decoration: BoxDecoration(
                              color: appTheme.blue50,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50.h)))),
                      Spacer(flex: 51),
                      Padding(
                          padding: EdgeInsets.only(left: 102.h),
                          child: Text("I am looking to",
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 32.v),
                      CustomElevatedButton(
                          width: 286.h,
                          text: "Adopt a pet",
                          buttonStyle: CustomButtonStyles.fillPrimaryTL50,
                          buttonTextStyle: theme.textTheme.titleMedium!,
                          onPressed: () {
                            onTapAdoptAPet(context);
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 73.v),
                      CustomElevatedButton(
                          width: 286.h,
                          text: "Give a pet for adoption",
                          buttonStyle:
                              CustomButtonStyles.fillOnPrimaryContainer,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumOnSecondaryContainer,
                          onPressed: () {
                            onTapGiveAPetForAdoption(context);
                          },
                          alignment: Alignment.center),
                      Spacer(flex: 48),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: 120.v,
                              width: 295.h,
                              decoration: BoxDecoration(
                                  color: appTheme.lightGreen100,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.h)))))
                    ]))));
  }

  /// Navigates to the iphone1415ProMaxFourScreen when the action is triggered.
  onTapAdoptAPet(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxFourScreen);
  }

  /// Navigates to the iphone1415ProMaxSixScreen when the action is triggered.
  onTapGiveAPetForAdoption(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxSixScreen);
  }
}
