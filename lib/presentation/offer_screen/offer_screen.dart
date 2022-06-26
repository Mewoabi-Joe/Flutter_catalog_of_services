import '../../initial/models/item.dart';
import '../../initial/services/item_service.dart';
import '../offer_screen/widgets/offer_screen_item_widget.dart';
import 'controller/offer_controller.dart';
import 'models/offer_screen_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OfferScreen extends StatefulWidget{
  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  List<Item>? items;
  ItemService itemService = ItemService();
  void getCatalogItems () async{
    List<Item> items =  await itemService.fetchCatalogsItems(Get.parameters['catalogId']!);
    setState(() {
      this.items = items;
    });
  }

  @override
  void initState() {
    getCatalogItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                decoration: BoxDecoration(color: ColorConstant.whiteA700),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: size.width,
                          margin: EdgeInsets.only(top: getVerticalSize(26.00)),
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: getHorizontalSize(16.00),
                                  right: getHorizontalSize(16.00)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(178.00),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                  height: getSize(24.00),
                                                  width: getSize(24.00),
                                                  child: InkWell(
                                                    onTap: () => Get.back(),
                                                    child: SvgPicture.asset(
                                                        ImageConstant.imgLefticon,
                                                        fit: BoxFit.fill),
                                                  )),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          12.00)),
                                                  child: Text(
                                                      Get.parameters['catalogName']!,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .textStylePoppinsbold161
                                                          .copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                      16),
                                                              letterSpacing:
                                                                  0.50)))
                                            ])),
                                    GestureDetector(
                                        onTap: () {
                                          onTapImgSearchicon();
                                        },
                                        child: Container(
                                            height: getSize(24.00),
                                            width: getSize(24.00),
                                            child: SvgPicture.asset(
                                                ImageConstant.imgSearchicon1,
                                                fit: BoxFit.fill)))
                                  ]))),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: EdgeInsets.only(
                                  top: getVerticalSize(44.00),
                                  bottom: getVerticalSize(51.00)),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: getVerticalSize(206.00),
                                        width: getHorizontalSize(343.00),
                                        margin: EdgeInsets.only(
                                            left: getHorizontalSize(16.00),
                                            right: getHorizontalSize(16.00)),
                                        child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Image.network(
                                                      Get.parameters['catalogFirstImageUrl']!,
                                                      height: getVerticalSize(
                                                          206.00),
                                                      width: getHorizontalSize(
                                                          343.00),
                                                      fit: BoxFit.fill)),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  24.00),
                                                          top: getVerticalSize(
                                                              32.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  24.00),
                                                          bottom:
                                                              getVerticalSize(
                                                                  32.00)),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        209.00),
                                                                child: Text(
                                                                    Get.parameters['catalogName']!,
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .textStylePoppinsbold24
                                                                        .copyWith(
                                                                            fontSize:
                                                                                getFontSize(24),
                                                                            letterSpacing: 0.50))),
                                                           ])))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(16.00),
                                            top: getVerticalSize(16.00),
                                            right: getHorizontalSize(16.00)),
                                        child:  items == null? Center(child: CircularProgressIndicator(),): GridView.builder(
                                            shrinkWrap: true,
                                            gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                mainAxisExtent: getVerticalSize(
                                                    283.00),
                                                crossAxisCount: 2,
                                                mainAxisSpacing:
                                                getHorizontalSize(
                                                    13.00),
                                                crossAxisSpacing:
                                                getHorizontalSize(
                                                    13.00)),
                                            physics:
                                            NeverScrollableScrollPhysics(),
                                            itemCount: items!.length,
                                            itemBuilder: (context, index) {

                                              return OfferScreenItemWidget(
                                                  items![index]
                                                  );
                                            }))
                                  ])))
                    ]))));
  }

  onTapProduct() {
    Get.toNamed(AppRoutes.productDetailScreen);
  }

  onTapImgSearchicon() {
    Get.toNamed(AppRoutes.searchScreen);
  }
}
