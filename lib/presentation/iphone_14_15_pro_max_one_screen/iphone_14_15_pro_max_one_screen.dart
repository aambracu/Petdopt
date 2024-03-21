import 'package:petdopt/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:petdopt/core/app_export.dart';

class Iphone1415ProMaxOneScreen extends StatelessWidget {
  const Iphone1415ProMaxOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: 158.v,
                          width: 278.h,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50.h))))),
                  Spacer(flex: 53),
                  Text("Petdopt", style: theme.textTheme.displayMedium),
                  SizedBox(height: 9.v),
                  Text("Pet adoption is now easier in Bangladesh",
                      style: theme.textTheme.bodySmall),
                  SizedBox(height: 43.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 76.h, right: 100.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgCatBackView,
                                    height: 64.v,
                                    width: 45.h,
                                    margin: EdgeInsets.only(top: 17.v)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgCatBackView,
                                    height: 62.v,
                                    width: 32.h,
                                    margin: EdgeInsets.only(bottom: 19.v))
                              ]))),
                  Spacer(flex: 46),
                  SizedBox(height: 82.v),
                  CustomElevatedButton(
                      height: 46.v,
                      width: 223.h,
                      text: "Click here to start!",
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: CustomTextStyles
                          .bodyMediumInriaSansOnSecondaryContainer,
                      onPressed: () {
                        onTapClickHereToStart(context);
                      })
                ]))));
  }

  /// Navigates to the iphone1415ProMaxTwoScreen when the action is triggered.
  onTapClickHereToStart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxTwoScreen);
  }
}
