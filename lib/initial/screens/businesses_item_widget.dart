import 'package:business/initial/models/business.dart';
import 'package:business/initial/models/user.dart';
import 'package:flutter/material.dart';
import 'package:business/core/app_export.dart';

class BusinessesItemWidget extends StatelessWidget {
  BusinessesItemWidget(this.business, this.user);
  Business business;
  User user;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(
            right: getHorizontalSize(
              12.00,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getSize(
                  70.00,
                ),
                width: getSize(
                  70.00,
                ),
                child: Image.network(
                  user.userPhotoUrl!,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  70.00,
                ),
                margin: EdgeInsets.only(
                  top: getVerticalSize(
                    8.00,
                  ),
                ),
                child: Text(
                  business.businessName!,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.textStylePoppinsregular10.copyWith(
                    fontSize: getFontSize(
                      10,
                    ),
                    letterSpacing: 0.50,
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
