import 'package:petdopt/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:petdopt/core/app_export.dart';

class Iphone1415ProMaxFourScreen extends StatelessWidget {
  const Iphone1415ProMaxFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 51.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("Pets for adoption in Dhaka",
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 46.v),
                      Container(
                          margin: EdgeInsets.only(right: 10.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 34.h, vertical: 47.v),
                          decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder50),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 2.h, top: 16.v, bottom: 41.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Murphy",
                                              style: CustomTextStyles
                                                  .headlineSmallSemiBold),
                                          SizedBox(height: 5.v),
                                          Text("Owned by Rafi Khan",
                                              style: CustomTextStyles
                                                  .titleSmallOnSecondaryContainer),
                                          SizedBox(height: 12.v),
                                          Text("Cat",
                                              style: CustomTextStyles
                                                  .titleSmall14),
                                          SizedBox(height: 10.v),
                                          Text("Breed: Native",
                                              style:
                                                  theme.textTheme.labelLarge),
                                          SizedBox(height: 15.v),
                                          Text("Age: 9 Months",
                                              style: theme.textTheme.labelLarge)
                                        ])),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 9.h, top: 7.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse3,
                                              height: 93.v,
                                              width: 95.h,
                                              radius:
                                                  BorderRadius.circular(47.h),
                                              alignment: Alignment.centerRight),
                                          SizedBox(height: 72.v),
                                          CustomElevatedButton(
                                              height: 27.v,
                                              width: 104.h,
                                              text: "See Details",
                                              buttonStyle:
                                                  CustomButtonStyles.fillGreen,
                                              buttonTextStyle:
                                                  theme.textTheme.labelLarge!)
                                        ]))
                              ])),
                      SizedBox(height: 50.v),
                      Container(
                          margin: EdgeInsets.only(right: 10.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 31.h, vertical: 38.v),
                          decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder50),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 16.v, bottom: 59.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Tom",
                                              style: CustomTextStyles
                                                  .headlineSmallSemiBold),
                                          SizedBox(height: 11.v),
                                          Text("Owned by Tahmid ",
                                              style: CustomTextStyles
                                                  .titleSmallOnSecondaryContainer),
                                          SizedBox(height: 10.v),
                                          Text("Dog",
                                              style: CustomTextStyles
                                                  .titleSmall14),
                                          SizedBox(height: 11.v),
                                          Text("Breed: Native",
                                              style:
                                                  theme.textTheme.labelLarge),
                                          SizedBox(height: 12.v),
                                          Text("Age: 6 Months",
                                              style: theme.textTheme.labelLarge)
                                        ])),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse2,
                                          height: 94.v,
                                          width: 100.h,
                                          alignment: Alignment.centerRight),
                                      SizedBox(height: 95.v),
                                      CustomElevatedButton(
                                          height: 27.v,
                                          width: 104.h,
                                          text: "See Details",
                                          buttonStyle:
                                              CustomButtonStyles.fillGreen,
                                          buttonTextStyle:
                                              theme.textTheme.labelLarge!)
                                    ])
                              ]))
                    ])),
            bottomNavigationBar: _buildNext(context)));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        height: 42.v,
        width: 159.h,
        text: "Next",
        margin: EdgeInsets.only(left: 131.h, right: 140.h, bottom: 48.v),
        onPressed: () {
          onTapNext(context);
        });
  }

  /// Navigates to the iphone1415ProMaxFiveScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxFiveScreen);
  }
}
