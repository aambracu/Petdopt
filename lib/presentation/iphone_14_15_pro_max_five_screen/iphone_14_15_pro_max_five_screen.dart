import 'package:petdopt/widgets/custom_elevated_button.dart';
import 'package:petdopt/widgets/custom_drop_down.dart';
import 'package:petdopt/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:petdopt/core/app_export.dart';

class Iphone1415ProMaxFiveScreen extends StatelessWidget {
  Iphone1415ProMaxFiveScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController sixController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 36.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 35.h),
                  child: Text(
                    "Give your pet’s details for listing",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
              SizedBox(height: 44.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Text(
                    "Upload a photo of your pet",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              _buildTwelve(context),
              SizedBox(height: 38.v),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: CustomDropDown(
                  hintText: "Location",
                  hintStyle: theme.textTheme.titleSmall!,
                  items: dropdownItemList,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 23.v,
                  ),
                  borderDecoration: DropDownStyleHelper.fillBlueGray,
                  fillColor: appTheme.blueGray100,
                ),
              ),
              SizedBox(height: 28.v),
              CustomTextFormField(
                controller: sixController,
                hintText: "Give details about your pet",
                hintStyle: theme.textTheme.titleSmall!,
                textInputAction: TextInputAction.done,
                maxLines: 14,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 21.h,
                  vertical: 22.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                fillColor: appTheme.blueGray100,
              ),
              SizedBox(height: 57.v),
              CustomElevatedButton(
                height: 41.v,
                width: 178.h,
                text: "Confirm listing",
                buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return Container(
      width: 346.h,
      margin: EdgeInsets.only(left: 12.h),
      padding: EdgeInsets.symmetric(
        horizontal: 122.h,
        vertical: 27.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12.v),
          CustomImageView(
            imagePath: ImageConstant.imgUploadToTheCloud,
            height: 47.v,
            width: 53.h,
            margin: EdgeInsets.only(left: 22.h),
          ),
          SizedBox(height: 23.v),
          CustomElevatedButton(
            height: 35.v,
            text: "Upload",
            margin: EdgeInsets.only(right: 6.h),
            buttonStyle: CustomButtonStyles.fillBlackTL17,
            buttonTextStyle: CustomTextStyles.titleSmallOnPrimary,
          ),
        ],
      ),
    );
  }
}
