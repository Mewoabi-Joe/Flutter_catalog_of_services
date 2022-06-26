import 'package:business/initial/models/business.dart';
import 'package:business/theme/app_style.dart';
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/math_utils.dart';
import '../models/user.dart';
import '../services/user_service.dart';

class ListBusinessItemWidget extends StatefulWidget {
  ListBusinessItemWidget(this.business);
 Business business;
  @override
  State<ListBusinessItemWidget> createState() => _ListBusinessItemWidgetState(business);
}

class _ListBusinessItemWidgetState extends State<ListBusinessItemWidget> {
  _ListBusinessItemWidgetState(this.business);
  Business  business;
  List<User>? users;
  UserService userService = UserService();


  void loadUsers() async{

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
    loadUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
        ),
        child: InkWell(
          // onTap: ()=> Get.toNamed(AppRoutes.offerScreen, parameters: {'catalogId': catalog.catalogId!, 'catalogFirstImageUrl': catalog.firstImageUrl!, 'catalogName': catalog.catalogName!}),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    16.00,
                  ),
                  top: getVerticalSize(
                    16.00,
                  ),
                  bottom: getVerticalSize(
                    16.00,
                  ),
                ),
                child: Container(
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                  child: Image.network(
                    getUserWithBusiness(business.userNumber!).userPhotoUrl!,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    16.00,
                  ),
                  top: getVerticalSize(
                    19.00,
                  ),
                  right: getHorizontalSize(
                    287.00,
                  ),
                  bottom: getVerticalSize(
                    19.00,
                  ),
                ),
                child: Text(
                  business.businessName!,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.textStylePoppinsbold121.copyWith(
                    fontSize: getFontSize(
                      12,
                    ),
                    letterSpacing: 0.50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}
