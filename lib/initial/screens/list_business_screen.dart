import 'package:business/core/utils/image_constant.dart';
import 'package:business/initial/screens/list_business_item_widget.dart';
import 'package:business/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/math_utils.dart';
import '../models/business.dart';
import '../models/user.dart';
import '../services/business_service.dart';
import '../services/user_service.dart';

class ListBusinessScreen extends StatefulWidget {
  const ListBusinessScreen({Key? key}) : super(key: key);

  @override
  State<ListBusinessScreen> createState() => _ListBusinessScreenState();
}

class _ListBusinessScreenState extends State<ListBusinessScreen> {
  List<Business>? businesses;
  List<User>? users;
  BusinessService businessService = BusinessService();
  UserService userService = UserService();

  void loadBusinessesAndUsers() async{
    List<Business> businesses = await businessService
        .fetchAllBusinessesOfUsers();
    setState(() {
      this.businesses = businesses;
    });
    List<User> users = await userService.fetchUsers();
    setState(() {
      this.users = users;
    });
  }

  User getUserWithBusiness(int userNumber) {
    return users!.firstWhere((user) => user.userNumber == userNumber);
  }

  @override
  void initState() {
    loadBusinessesAndUsers();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: businesses == null
            ? Center(child: CircularProgressIndicator())
            : Container(
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width,
                margin: EdgeInsets.only(
                  top: getVerticalSize(
                    26.00,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      16.00,
                    ),
                    right: getHorizontalSize(
                      242.00,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: getSize(
                          24.00,
                        ),
                        width: getSize(
                          24.00,
                        ),
                        child: InkWell(
                          onTap: () => Get.back(),
                          child: SvgPicture.asset(
                            ImageConstant.imgLefticon,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            12.00,
                          ),
                        ),
                        child: Text(
                          'Business',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                          AppStyle.textStylePoppinsbold161.copyWith(
                            fontSize: getFontSize(
                              16,
                            ),
                            letterSpacing: 0.50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: getVerticalSize(
                    28.00,
                  ),
                  bottom: getVerticalSize(
                    156.00,
                  ),
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: businesses!.length,
                        itemBuilder: (context, index) {
                          // ListCategoryItemModel model = controller
                          //     .listCategoryModelObj
                          //     .value
                          //     .listCategoryItemList[index];
                          return ListBusinessItemWidget(
                            businesses![index],
                          );
                        },
                      ) ,

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}
