import '../../initial/models/item.dart';
import '../../initial/services/item_service.dart';
import '../product_detail_screen/widgets/group29_item_widget.dart';
import '../product_detail_screen/widgets/recomended_item_widget.dart';
import 'controller/product_detail_controller.dart';
import 'models/group29_item_model.dart';
import 'models/recomended_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {

  ItemService itemService = ItemService();
  List<Item>? items;

  void getItemsInACategory(String catalogId) async{
    List<Item> items = await itemService.fetchCatalogsItems(catalogId);

    setState(() {
      this.items = items.where((item) => item.itemId != Get.parameters['itemId']!).toList();
    });
  }

  @override
  void initState() {
    getItemsInACategory(Get.parameters['catalogId']!);
    super.initState();
  }
  // var controller = Get.find<ProductDetailController>();

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
                                        width: getHorizontalSize(229.00),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                onTap: ()=> Get.back(),
                                                child: Container(
                                                    height: getSize(24.00),
                                                    width: getSize(24.00),
                                                    child: SvgPicture.asset(
                                                        ImageConstant.imgLefticon,
                                                        fit: BoxFit.fill)),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          12.00)),
                                                  child: Text(
                                                      Get.parameters['itemName']!,
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
                                    Container(
                                        width: getHorizontalSize(64.00),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapImgSearchicon();
                                                  },
                                                  child: Container(
                                                      height: getSize(24.00),
                                                      width: getSize(24.00),
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgSearchicon1,
                                                          fit: BoxFit.fill))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00)),
                                                  child: Container(
                                                      height: getSize(24.00),
                                                      width: getSize(24.00),
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgMoreicon,
                                                          fit: BoxFit.fill)))
                                            ]))
                                  ]))),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: EdgeInsets.only(
                                  top: getVerticalSize(28.00),
                                  bottom: getVerticalSize(20.00)),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CarouselSlider.builder(
                                                  options: CarouselOptions(
                                                      height: getVerticalSize(
                                                          238.00),
                                                      initialPage: 0,
                                                      autoPlay: true,
                                                      viewportFraction: 1.0,
                                                      enableInfiniteScroll:
                                                      false,
                                                      scrollDirection:
                                                      Axis.horizontal,
                                                      onPageChanged:
                                                          (index, reason) {
                                                        // controller.silderIndex
                                                        //     .value = index;
                                                      }),
                                                  itemCount: 1,
                                                  itemBuilder: (context, index,
                                                      realIndex) {
                                                    // Group29ItemModel model =
                                                    // controller
                                                    //     .productDetailModelObj
                                                    //     .value
                                                    //     .group29ItemList[index];
                                                    return Group29ItemWidget(Get.parameters['itemImage']!);
                                                  }),
                                              // Align(
                                              //     alignment: Alignment.center,
                                              //     child: Container(
                                              //         height:
                                              //         getVerticalSize(8.00),
                                              //         margin: EdgeInsets.only(
                                              //             left: getHorizontalSize(
                                              //                 16.00),
                                              //             top: getVerticalSize(
                                              //                 16.00),
                                              //             right: getHorizontalSize(
                                              //                 16.00)),
                                              //         child: AnimatedSmoothIndicator(
                                              //             activeIndex: controller
                                              //                 .silderIndex
                                              //                 .value,
                                              //             count: controller
                                              //                 .productDetailModelObj
                                              //                 .value
                                              //                 .group29ItemList
                                              //                 .length,
                                              //             axisDirection:
                                              //             Axis.horizontal,
                                              //             effect: ScrollingDotsEffect(
                                              //                 spacing: 8,
                                              //                 activeDotColor:
                                              //                 ColorConstant
                                              //                     .lightBlueA200,
                                              //                 dotColor: ColorConstant.blue50,
                                              //                 dotHeight: getVerticalSize(8.00),
                                              //                 dotWidth: getHorizontalSize(8.00))))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              16.00)),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        275.00),
                                                                margin: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        16.00)),
                                                                child: Text(
                                                                   Get.parameters['itemName']!,
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .textStylePoppinsbold20
                                                                        .copyWith(
                                                                            fontSize:
                                                                                getFontSize(20),
                                                                            letterSpacing: 0.50))),
                                                            // Padding(
                                                            //     padding: EdgeInsets.only(
                                                            //         top: getVerticalSize(
                                                            //             2.00),
                                                            //         right: getHorizontalSize(
                                                            //             16.00),
                                                            //         bottom: getVerticalSize(
                                                            //             34.00)),
                                                            //     child: Container(
                                                            //         height:
                                                            //             getSize(
                                                            //                 24.00),
                                                            //         width: getSize(
                                                            //             24.00),
                                                            //         child: SvgPicture.asset(
                                                            //             ImageConstant
                                                            //                 .imgLoveicon,
                                                            //             fit: BoxFit
                                                            //                 .fill)))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: getHorizontalSize(
                                                              16.00),
                                                          top: getVerticalSize(
                                                              8.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  16.00)),
                                                      child: RatingBar.builder(
                                                          initialRating: double.parse(Get.parameters['itemRating']!),
                                                          minRating: 0,
                                                          direction:
                                                              Axis.horizontal,
                                                          allowHalfRating:
                                                              false,
                                                          itemSize:
                                                              getVerticalSize(
                                                                  16.00),
                                                          unratedColor:
                                                              ColorConstant
                                                                  .blue50,
                                                          itemCount: 5,
                                                          updateOnDrag: true,
                                                          onRatingUpdate:
                                                              (rating) {},
                                                          itemBuilder:
                                                              (context, _) {
                                                            return Icon(
                                                                Icons.star,
                                                                color: ColorConstant
                                                                    .yellow700);
                                                          }))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: getHorizontalSize(
                                                              16.00),
                                                          top: getVerticalSize(
                                                              16.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  16.00)),
                                                      child: Text(
                                                          '${
                                                            Get
                                                                .parameters['itemPrice']
                                                          } frs CFA',
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .textStylePoppinsbold201
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          20),
                                                                  letterSpacing:
                                                                      0.50))))
                                            ])),
                                    // Align(
                                    //     alignment: Alignment.centerLeft,
                                    //     child: Padding(
                                    //         padding: EdgeInsets.only(
                                    //             left: getHorizontalSize(16.00),
                                    //             top: getVerticalSize(24.00),
                                    //             right:
                                    //                 getHorizontalSize(16.00)),
                                    //         child: Text("lbl_select_size".tr,
                                    //             overflow: TextOverflow.ellipsis,
                                    //             textAlign: TextAlign.left,
                                    //             style: AppStyle
                                    //                 .textStylePoppinsbold141
                                    //                 .copyWith(
                                    //                     fontSize:
                                    //                         getFontSize(14),
                                    // //                     letterSpacing: 0.50)))),
                                    // Align(
                                    //     alignment: Alignment.centerRight,
                                    //     child: Padding(
                                    //         padding: EdgeInsets.only(
                                    //             left: getHorizontalSize(10.00),
                                    //             top: getVerticalSize(12.00)),
                                    //         child: Row(
                                    //             mainAxisAlignment:
                                    //                 MainAxisAlignment
                                    //                     .spaceBetween,
                                    //             crossAxisAlignment:
                                    //                 CrossAxisAlignment.center,
                                    //             mainAxisSize: MainAxisSize.max,
                                    //             children: [
                                    //               Container(
                                    //                   alignment:
                                    //                       Alignment.center,
                                    //                   height: getSize(48.00),
                                    //                   width: getSize(48.00),
                                    //                   decoration: AppDecoration
                                    //                       .textStylePoppinsbold143,
                                    //                   child: Text("lbl_6".tr,
                                    //                       textAlign:
                                    //                           TextAlign.center,
                                    //                       style: AppStyle
                                    //                           .textStylePoppinsbold143
                                    //                           .copyWith(
                                    //                               fontSize:
                                    //                                   getFontSize(
                                    //                                       14),
                                    // //                               letterSpacing:
                                    // //                                   0.50))),
                                    //               Container(
                                    //                   alignment:
                                    //                       Alignment.center,
                                    //                   height: getSize(48.00),
                                    //                   width: getSize(48.00),
                                    //                   decoration: AppDecoration
                                    //                       .textStylePoppinsbold144,
                                    //                   child: Text("lbl_6_5".tr,
                                    //                       textAlign:
                                    //                           TextAlign.center,
                                    //                       style: AppStyle
                                    //                           .textStylePoppinsbold144
                                    //                           .copyWith(
                                    //                               fontSize:
                                    //                                   getFontSize(
                                    //                                       14),
                                    //                               letterSpacing:
                                    //                                   0.50))),
                                    //               Container(
                                    //                   alignment:
                                    //                       Alignment.center,
                                    //                   height: getSize(48.00),
                                    //                   width: getSize(48.00),
                                    //                   decoration: AppDecoration
                                    //                       .textStylePoppinsbold145,
                                    //                   child: Text("lbl_7".tr,
                                    //                       textAlign:
                                    //                           TextAlign.center,
                                    //                       style: AppStyle
                                    //                           .textStylePoppinsbold145
                                    //                           .copyWith(
                                    //                               fontSize:
                                    //                                   getFontSize(
                                    //                                       14),
                                    //                               letterSpacing:
                                    //                                   0.50))),
                                    //               Container(
                                    //                   alignment:
                                    //                       Alignment.center,
                                    //                   height: getSize(48.00),
                                    //                   width: getSize(48.00),
                                    //                   decoration: AppDecoration
                                    //                       .textStylePoppinsbold144,
                                    //                   child: Text("lbl_7_5".tr,
                                    //                       textAlign:
                                    //                           TextAlign.center,
                                    //                       style: AppStyle
                                    //                           .textStylePoppinsbold144
                                    //                           .copyWith(
                                    //                               fontSize:
                                    //                                   getFontSize(
                                    //                                       14),
                                    //                               letterSpacing:
                                    //                                   0.50))),
                                    //               Container(
                                    //                   alignment:
                                    //                       Alignment.center,
                                    //                   height: getSize(48.00),
                                    //                   width: getSize(48.00),
                                    //                   decoration: AppDecoration
                                    //                       .textStylePoppinsbold144,
                                    //                   child: Text("lbl_8".tr,
                                    //                       textAlign:
                                    //                           TextAlign.center,
                                    //                       style: AppStyle
                                    //                           .textStylePoppinsbold144
                                    //                           .copyWith(
                                    //                               fontSize:
                                    //                                   getFontSize(
                                    //                                       14),
                                    //                               letterSpacing:
                                    //                                   0.50))),
                                    //               Container(
                                    //                   alignment:
                                    //                       Alignment.center,
                                    //                   height: getSize(48.00),
                                    //                   width: getSize(48.00),
                                    //                   decoration: AppDecoration
                                    //                       .textStylePoppinsbold144,
                                    //                   child: Text("lbl_8_5".tr,
                                    //                       textAlign:
                                    //                           TextAlign.center,
                                    //                       style: AppStyle
                                    //                           .textStylePoppinsbold144
                                    //                           .copyWith(
                                    //                               fontSize:
                                    //                                   getFontSize(
                                    //                                       14),
                                    //                               letterSpacing:
                                    //                                   0.50)))
                                    //             ]))),
                                    // Align(
                                    //     alignment: Alignment.centerLeft,
                                    //     child: Padding(
                                    //         padding: EdgeInsets.only(
                                    //             left: getHorizontalSize(16.00),
                                    //             top: getVerticalSize(24.00),
                                    //             right:
                                    //                 getHorizontalSize(16.00)),
                                    //         child: Text("lbl_select_color".tr,
                                    //             overflow: TextOverflow.ellipsis,
                                    //             textAlign: TextAlign.left,
                                    //             style: AppStyle
                                    //                 .textStylePoppinsbold141
                                    //                 .copyWith(
                                    //                     fontSize:
                                    //                         getFontSize(14),
                                    //                     letterSpacing: 0.50)))),
                                    // Align(
                                    //     alignment: Alignment.centerRight,
                                    //     child: Padding(
                                    //         padding: EdgeInsets.only(
                                    //             left: getHorizontalSize(10.00),
                                    //             top: getVerticalSize(12.00)),
                                    //         child: Container(
                                    //             height: getVerticalSize(48.00),
                                    //             width:
                                    //                 getHorizontalSize(359.00),
                                    //             child: SvgPicture.asset(
                                    //                 ImageConstant.imgColors,
                                    //                 fit: BoxFit.fill)))),
                                    // Align(
                                    //     alignment: Alignment.centerLeft,
                                    //     child: Padding(
                                    //         padding: EdgeInsets.only(
                                    //             left: getHorizontalSize(16.00),
                                    //             top: getVerticalSize(24.00),
                                    //             right:
                                    //                 getHorizontalSize(16.00)),
                                    //         child: Text("lbl_specification".tr,
                                    //             overflow: TextOverflow.ellipsis,
                                    //             textAlign: TextAlign.left,
                                    //             style: AppStyle
                                    //                 .textStylePoppinsbold141
                                    //                 .copyWith(
                                    //                     fontSize:
                                    //                         getFontSize(14),
                                    //                     letterSpacing: 0.50)))),
                                    // Align(
                                    //     alignment: Alignment.center,
                                    //     child: Padding(
                                    //         padding: EdgeInsets.only(
                                    //             left: getHorizontalSize(10.00),
                                    //             top: getVerticalSize(12.00),
                                    //             right:
                                    //                 getHorizontalSize(10.00)),
                                    //         child: Row(
                                    //             mainAxisAlignment:
                                    //                 MainAxisAlignment
                                    //                     .spaceBetween,
                                    //             crossAxisAlignment:
                                    //                 CrossAxisAlignment.start,
                                    //             mainAxisSize: MainAxisSize.max,
                                    //             children: [
                                    //               Padding(
                                    //                   padding: EdgeInsets.only(
                                    //                       bottom:
                                    //                           getVerticalSize(
                                    //                               44.00)),
                                    //                   child: Text(
                                    //                       "lbl_shown".tr,
                                    //                       overflow: TextOverflow
                                    //                           .ellipsis,
                                    //                       textAlign:
                                    //                           TextAlign.left,
                                    //                       style: AppStyle
                                    //                           .textStylePoppinsregular121
                                    //                           .copyWith(
                                    //                               fontSize:
                                    //                                   getFontSize(
                                    //                                       12),
                                    //                               letterSpacing:
                                    //                                   0.50))),
                                    //               Container(
                                    //                   width: getHorizontalSize(
                                    //                       171.00),
                                    //                   child: Text(
                                    //                       "msg_laser_blue_anth"
                                    //                           .tr,
                                    //                       maxLines: null,
                                    //                       textAlign:
                                    //                           TextAlign.right,
                                    //                       style: AppStyle
                                    //                           .textStylePoppinsregular12
                                    //                           .copyWith(
                                    //                               fontSize:
                                    //                                   getFontSize(
                                    //                                       12),
                                    //                               letterSpacing:
                                    //                                   0.50)))
                                    //             ]))),
                                    // Align(
                                    //     alignment: Alignment.center,
                                    //     child: Padding(
                                    //         padding: EdgeInsets.only(
                                    //             left: getHorizontalSize(10.00),
                                    //             top: getVerticalSize(16.00),
                                    //             right:
                                    //                 getHorizontalSize(10.00)),
                                    //         child: Row(
                                    //             mainAxisAlignment:
                                    //                 MainAxisAlignment
                                    //                     .spaceBetween,
                                    //             crossAxisAlignment:
                                    //                 CrossAxisAlignment.center,
                                    //             mainAxisSize: MainAxisSize.max,
                                    //             children: [
                                    //               Text("lbl_style".tr,
                                    //                   overflow:
                                    //                       TextOverflow.ellipsis,
                                    //                   textAlign: TextAlign.left,
                                    //                   style: AppStyle
                                    //                       .textStylePoppinsregular121
                                    //                       .copyWith(
                                    //                           fontSize:
                                    //                               getFontSize(
                                    //                                   12),
                                    //                           letterSpacing:
                                    //                               0.50)),
                                    //               Text("lbl_cd0113_400".tr,
                                    //                   overflow:
                                    //                       TextOverflow.ellipsis,
                                    //                   textAlign:
                                    //                       TextAlign.right,
                                    //                   style: AppStyle
                                    //                       .textStylePoppinsregular12
                                    //                       .copyWith(
                                    //                           fontSize:
                                    //                               getFontSize(
                                    //                                   12),
                                    //                           letterSpacing:
                                    //                               0.50))
                                    //             ]))),
                                    // Align(
                                    //     alignment: Alignment.centerLeft,
                                    //     child: Container(
                                    //         width: getHorizontalSize(343.00),
                                    //         margin: EdgeInsets.only(
                                    //             left: getHorizontalSize(16.00),
                                    //             top: getVerticalSize(16.00),
                                    //             right:
                                    //                 getHorizontalSize(16.00)),
                                    //         child: Text(
                                    //             "msg_the_nike_air_ma".tr,
                                    //             maxLines: null,
                                    //             textAlign: TextAlign.left,
                                    //             style: AppStyle
                                    //                 .textStylePoppinsregular12
                                    //                 .copyWith(
                                    //                     fontSize:
                                    //                         getFontSize(12),
                                    //                     letterSpacing: 0.50)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(24.00)),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        16.00)),
                                                                child: Text(
                                                                    "Product description"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle.textStylePoppinsbold141.copyWith(
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        letterSpacing:
                                                                            0.50))),
                                                            // GestureDetector(
                                                            //     onTap: () {
                                                            //       onTapTxtSeemore();
                                                            //     },
                                                            //     child: Padding(
                                                            //         padding: EdgeInsets.only(
                                                            //             right: getHorizontalSize(
                                                            //                 16.00)),
                                                            //         child: Text(
                                                            //             "lbl_see_more"
                                                            //                 .tr,
                                                            //             overflow:
                                                            //                 TextOverflow
                                                            //                     .ellipsis,
                                                            //             textAlign:
                                                            //                 TextAlign
                                                            //                     .right,
                                                            //             style: AppStyle.textStylePoppinsbold142.copyWith(
                                                            //                 fontSize:
                                                            //                     getFontSize(14),
                                                            //                 letterSpacing: 0.50))))
                                                          ])),
                                                  // Align(
                                                  //     alignment:
                                                  //         Alignment.centerLeft,
                                                  //     child: Padding(
                                                  //         padding: EdgeInsets.only(
                                                  //             left:
                                                  //                 getHorizontalSize(
                                                  //                     16.00),
                                                  //             top:
                                                  //                 getVerticalSize(
                                                  //                     8.00),
                                                  //             right:
                                                  //                 getHorizontalSize(
                                                  //                     176.00)),
                                                  //         child: Row(
                                                  //             mainAxisAlignment:
                                                  //                 MainAxisAlignment
                                                  //                     .start,
                                                  //             crossAxisAlignment:
                                                  //                 CrossAxisAlignment
                                                  //                     .center,
                                                  //             mainAxisSize:
                                                  //                 MainAxisSize
                                                  //                     .min,
                                                  //             children: [
                                                  //               RatingBar
                                                  //                   .builder(
                                                  //                       initialRating:
                                                  //                           4,
                                                  //                       minRating:
                                                  //                           0,
                                                  //                       direction:
                                                  //                           Axis
                                                  //                               .horizontal,
                                                  //                       allowHalfRating:
                                                  //                           false,
                                                  //                       itemSize:
                                                  //                           getVerticalSize(
                                                  //                               16.00),
                                                  //                       unratedColor:
                                                  //                           ColorConstant
                                                  //                               .blue50,
                                                  //                       itemCount:
                                                  //                           5,
                                                  //                       updateOnDrag:
                                                  //                           true,
                                                  //                       onRatingUpdate:
                                                  //                           (rating) {},
                                                  //                       itemBuilder:
                                                  //                           (context,
                                                  //                               _) {
                                                  //                         return Icon(
                                                  //                             Icons.star,
                                                  //                             color: ColorConstant.yellow700);
                                                  //                       }),
                                                  //               Padding(
                                                  //                   padding: EdgeInsets.only(
                                                  //                       left: getHorizontalSize(
                                                  //                           8.00),
                                                  //                       bottom: getVerticalSize(
                                                  //                           1.00)),
                                                  //                   child: Text(
                                                  //                       "lbl_4_5"
                                                  //                           .tr,
                                                  //                       overflow:
                                                  //                           TextOverflow
                                                  //                               .ellipsis,
                                                  //                       textAlign:
                                                  //                           TextAlign
                                                  //                               .left,
                                                  //                       style: AppStyle.textStylePoppinsbold102.copyWith(
                                                  //                           fontSize:
                                                  //                               getFontSize(10),
                                                  //                           letterSpacing: 0.50))),
                                                  //               Padding(
                                                  //                   padding: EdgeInsets.only(
                                                  //                       left: getHorizontalSize(
                                                  //                           3.00),
                                                  //                       bottom: getVerticalSize(
                                                  //                           1.00)),
                                                  //                   child: Text(
                                                  //                       "lbl_5_review"
                                                  //                           .tr,
                                                  //                       overflow:
                                                  //                           TextOverflow
                                                  //                               .ellipsis,
                                                  //                       textAlign:
                                                  //                           TextAlign
                                                  //                               .left,
                                                  //                       style: AppStyle.textStylePoppinsregular10.copyWith(
                                                  //                           fontSize:
                                                  //                               getFontSize(10),
                                                  //                           letterSpacing: 0.50)))
                                                  //             ]))),
                                                  // Align(
                                                  //     alignment:
                                                  //         Alignment.centerLeft,
                                                  //     child: Padding(
                                                  //         padding: EdgeInsets.only(
                                                  //             top:
                                                  //                 getVerticalSize(
                                                  //                     16.00)),
                                                  //         child: Row(
                                                  //             mainAxisAlignment:
                                                  //                 MainAxisAlignment
                                                  //                     .start,
                                                  //             crossAxisAlignment:
                                                  //                 CrossAxisAlignment
                                                  //                     .center,
                                                  //             mainAxisSize:
                                                  //                 MainAxisSize
                                                  //                     .max,
                                                  //             children: [
                                                  //               Padding(
                                                  //                   padding: EdgeInsets.only(
                                                  //                       left: getHorizontalSize(
                                                  //                           16.00)),
                                                  //                   child: ClipRRect(
                                                  //                       borderRadius:
                                                  //                           BorderRadius.circular(getSize(
                                                  //                               24.00)),
                                                  //                       child: Image.asset(
                                                  //                           ImageConstant
                                                  //                               .imgProfilepicture,
                                                  //                           height:
                                                  //                               getSize(48.00),
                                                  //                           width: getSize(48.00),
                                                  //                           fit: BoxFit.fill))),
                                                  //               Padding(
                                                  //                   padding: EdgeInsets.only(
                                                  //                       left: getHorizontalSize(
                                                  //                           16.00),
                                                  //                       top: getVerticalSize(
                                                  //                           3.00),
                                                  //                       right: getHorizontalSize(
                                                  //                           183.00),
                                                  //                       bottom: getVerticalSize(
                                                  //                           4.00)),
                                                  //                   child: Column(
                                                  //                       mainAxisSize:
                                                  //                           MainAxisSize
                                                  //                               .min,
                                                  //                       crossAxisAlignment:
                                                  //                           CrossAxisAlignment
                                                  //                               .start,
                                                  //                       mainAxisAlignment:
                                                  //                           MainAxisAlignment.start,
                                                  //                       children: [
                                                  //                         Text(
                                                  //                             "lbl_james_lawson".tr,
                                                  //                             overflow: TextOverflow.ellipsis,
                                                  //                             textAlign: TextAlign.left,
                                                  //                             style: AppStyle.textStylePoppinsbold141.copyWith(fontSize: getFontSize(14), letterSpacing: 0.50)),
                                                  //                         Padding(
                                                  //                             padding: EdgeInsets.only(top: getVerticalSize(4.00), right: getHorizontalSize(10.00)),
                                                  //                             child: RatingBar.builder(
                                                  //                                 initialRating: 4,
                                                  //                                 minRating: 0,
                                                  //                                 direction: Axis.horizontal,
                                                  //                                 allowHalfRating: false,
                                                  //                                 itemSize: getVerticalSize(16.00),
                                                  //                                 unratedColor: ColorConstant.blue50,
                                                  //                                 itemCount: 5,
                                                  //                                 updateOnDrag: true,
                                                  //                                 onRatingUpdate: (rating) {},
                                                  //                                 itemBuilder: (context, _) {
                                                  //                                   return Icon(Icons.star, color: ColorConstant.yellow700);
                                                  //                                 }))
                                                  //                       ]))
                                                  //             ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  343.00),
                                                          margin: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  16.00),
                                                              top: getVerticalSize(
                                                                  16.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      16.00)),
                                                          child: Text(
                                                              Get.parameters['itemDescription']!,
                                                              maxLines: null,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .textStylePoppinsregular12
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(12),
                                                                      letterSpacing: 0.50)))),
                                                  // Align(
                                                  //     alignment:
                                                  //         Alignment.centerLeft,
                                                  //     child: Padding(
                                                  //         padding: EdgeInsets.only(
                                                  //             left:
                                                  //                 getHorizontalSize(
                                                  //                     16.00),
                                                  //             top:
                                                  //                 getVerticalSize(
                                                  //                     16.00),
                                                  //             right:
                                                  //                 getHorizontalSize(
                                                  //                     119.00)),
                                                  //         child: Row(
                                                  //             mainAxisAlignment:
                                                  //                 MainAxisAlignment
                                                  //                     .start,
                                                  //             crossAxisAlignment:
                                                  //                 CrossAxisAlignment
                                                  //                     .center,
                                                  //             mainAxisSize:
                                                  //                 MainAxisSize
                                                  //                     .max,
                                                  //             children: [
                                                  //               Image.asset(
                                                  //                   ImageConstant
                                                  //                       .imgProductpicture,
                                                  //                   height:
                                                  //                       getSize(
                                                  //                           72.00),
                                                  //                   width: getSize(
                                                  //                       72.00),
                                                  //                   fit: BoxFit
                                                  //                       .fill),
                                                  //               Padding(
                                                  //                   padding: EdgeInsets.only(
                                                  //                       left: getHorizontalSize(
                                                  //                           12.00)),
                                                  //                   child: Image.asset(
                                                  //                       ImageConstant
                                                  //                           .imgProductpicture1,
                                                  //                       height: getSize(
                                                  //                           72.00),
                                                  //                       width: getSize(
                                                  //                           72.00),
                                                  //                       fit: BoxFit
                                                  //                           .fill)),
                                                  //               Padding(
                                                  //                   padding: EdgeInsets.only(
                                                  //                       left: getHorizontalSize(
                                                  //                           12.00)),
                                                  //                   child: Image.asset(
                                                  //                       ImageConstant
                                                  //                           .imgProductpicture2,
                                                  //                       height: getSize(
                                                  //                           72.00),
                                                  //                       width: getSize(
                                                  //                           72.00),
                                                  //                       fit: BoxFit
                                                  //                           .fill))
                                                  //             ]))),
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  16.00),
                                                              top: getVerticalSize(
                                                                  16.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      16.00)),
                                                          child: Text(
                                                              "msg_december_10_20"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .textStylePoppinsregular10
                                                                  .copyWith(
                                                                      fontSize: getFontSize(10),
                                                                      letterSpacing: 0.50))))
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(16.00),
                                                top: getVerticalSize(23.00),
                                                right:
                                                    getHorizontalSize(16.00)),
                                            child: Text("msg_you_might_also".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .textStylePoppinsbold141
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(14),
                                                        letterSpacing: 0.07)))),
                                    items == null ? Center(child: CircularProgressIndicator(),): Align(
                                       alignment: Alignment.centerRight,
                                       child: Container(
                                           height: getVerticalSize(250.00),
                                           width: getHorizontalSize(455.00),
                                           child: ListView.builder(
                                               padding: EdgeInsets.only(
                                                   left: getHorizontalSize(
                                                       10.00),
                                                   top:
                                                   getVerticalSize(12.00)),
                                               scrollDirection:
                                               Axis.horizontal,
                                               physics:
                                               BouncingScrollPhysics(),
                                               itemCount: items!.length,
                                               itemBuilder: (context, index) {
                                                 // RecomendedItemModel model =
                                                 // controller
                                                 //     .productDetailModelObj
                                                 //     .value
                                                 //     .recomendedItemList[index];
                                                 return RecomendedItemWidget(
                                                     items![index]);
                                               }))),
                                    // Align(
                                    //     alignment: Alignment.center,
                                    //     child: Padding(
                                    //         padding: EdgeInsets.only(
                                    //             left: getHorizontalSize(10.00),
                                    //             top: getVerticalSize(21.00),
                                    //             right:
                                    //                 getHorizontalSize(10.00)),
                                    //         child: GestureDetector(
                                    //             onTap: () {
                                    //               onTapBtnAddtocart();
                                    //             },
                                    //             child: Container(
                                    //                 alignment: Alignment.center,
                                    //                 height:
                                    //                     getVerticalSize(57.00),
                                    //                 width: getHorizontalSize(
                                    //                     343.00),
                                    //                 decoration: AppDecoration
                                    //                     .textStylePoppinsbold146,
                                    //                 child: Text(
                                    //                     "lbl_add_to_cart".tr,
                                    //                     textAlign:
                                    //                         TextAlign.center,
                                    //                     style: AppStyle
                                    //                         .textStylePoppinsbold146
                                    //                         .copyWith(
                                    //                             fontSize:
                                    //                                 getFontSize(
                                    //                                     14),
                                    //                             letterSpacing:
                                    //                                 0.50))))))
                                  ])))
                    ]))));
  }

  onTapImgSearchicon() {
    Get.toNamed(AppRoutes.searchScreen);
  }

  onTapTxtSeemore() {
    Get.toNamed(AppRoutes.reviewProductScreen);
  }

  onTapBtnAddtocart() {
    Get.toNamed(AppRoutes.cartScreen);
  }
}
