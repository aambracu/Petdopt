import 'package:petdopt/widgets/custom_drop_down.dart';
import 'package:petdopt/widgets/custom_text_form_field.dart';
import 'package:petdopt/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:petdopt/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSixScreen extends StatelessWidget {
  Iphone1415ProMaxSixScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  TextEditingController nameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 35.h, vertical: 59.v),
                            child: Column(children: [
                              Text("Give your pet’s details for listing",
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 36.v),
                              Container(
                                  width: 352.h,
                                  margin: EdgeInsets.only(left: 8.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 19.h, vertical: 53.v),
                                  decoration: AppDecoration.fillBlueGray
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder25),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 25.h),
                                            child: Text("Select pet type",
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        SizedBox(height: 12.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 27.h),
                                            child: CustomDropDown(
                                                icon: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        30.h, 18.v, 24.h, 18.v),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgTelevision,
                                                        height: 15.adaptSize,
                                                        width: 15.adaptSize)),
                                                hintText: "Cat/Dog",
                                                items: dropdownItemList)),
                                        SizedBox(height: 42.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 21.h),
                                            child: Text("Select Breed",
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        SizedBox(height: 10.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.h, right: 19.h),
                                            child: CustomDropDown(
                                                icon: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 30.h,
                                                            vertical: 20.v),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgTelevision,
                                                        height: 15.adaptSize,
                                                        width: 15.adaptSize)),
                                                hintText: "Native/Foreign",
                                                items: dropdownItemList1)),
                                        SizedBox(height: 36.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 18.h),
                                            child: Text("Select Age",
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        SizedBox(height: 10.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.h, right: 17.h),
                                            child: CustomDropDown(
                                                icon: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 30.h,
                                                            vertical: 20.v),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgTelevision,
                                                        height: 15.adaptSize,
                                                        width: 15.adaptSize)),
                                                hintText: "Age",
                                                alignment: Alignment.center,
                                                items: dropdownItemList2)),
                                        SizedBox(height: 39.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 21.h),
                                            child: Text("Name",
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        SizedBox(height: 11.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.h, right: 19.h),
                                            child: CustomTextFormField(
                                                controller: nameController,
                                                hintText: "Write Name",
                                                textInputAction:
                                                    TextInputAction.done)),
                                        SizedBox(height: 62.v)
                                      ])),
                              SizedBox(height: 70.v),
                              CustomElevatedButton(
                                  height: 42.v,
                                  width: 159.h,
                                  text: "Next",
                                  onPressed: () {
                                    onTapNext(context);
                                  }),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Navigates to the iphone1415ProMaxFiveScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxFiveScreen);
  }
}
