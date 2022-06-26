import 'package:business/initial/models/business.dart';
import 'package:business/initial/models/catalog.dart';
import 'package:business/initial/models/item.dart';
import 'package:business/initial/services/business_service.dart';
import 'package:business/initial/services/catalog_service.dart';
import 'package:business/initial/services/item_service.dart';
import 'package:business/initial/services/user_service.dart';

import '../../initial/models/user.dart';
import '../../initial/screens/businesses_item_widget.dart';
import '../dashboard_screen/widgets/categories_item_widget.dart';
import '../dashboard_screen/widgets/dashboard_item_widget.dart';
import '../dashboard_screen/widgets/flashsale_item_widget.dart';
import '../dashboard_screen/widgets/group18_item_widget.dart';
import '../dashboard_screen/widgets/megasale_item_widget.dart';
import 'controller/dashboard_controller.dart';
import 'models/categories_item_model.dart';
import 'models/dashboard_item_model.dart';
import 'models/flashsale_item_model.dart';
import 'models/group18_item_model.dart';
import 'models/megasale_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DashboardScreen extends StatefulWidget {

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  CatalogService catalogService = CatalogService();
  ItemService itemService = ItemService();
  BusinessService businessService = BusinessService();
  UserService userService = UserService();
  List<Item>? sixItems;
  List<Business>? businesses;
  List<Catalog>? catalogs;
  List<User>? users;
  bool everyThingLoaded = false;

  void getFiveItemsCategoriesBusinesses() async {
    List<Item> sixItems = await itemService.fetchSixItemsFromCatalogs();
    setState(() {
      this.sixItems = sixItems;
    });
    List<Catalog> catalogs = await catalogService
        .fetchAllCatalogsOfBusinesses();
    setState(() {
      this.catalogs = catalogs;
    });
    List<Business> businesses = await businessService
        .fetchAllBusinessesOfUsers();
    setState(() {
      this.businesses = businesses;
    });
    List<User> users = await userService.fetchUsers();
    setState(() {
      this.users = users;
    });

    setState(() {
      this.everyThingLoaded = true;
    });
    // print("gottenBusinesses: $usersBusinesses");
  }

  User getUserWithBusiness(int userNumber) {
    return users!.firstWhere((user) => user.userNumber == userNumber);
  }

  @override
  void initState() {
    getFiveItemsCategoriesBusinesses();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('sixItems: \n ${sixItems}');
    // print('businesses: \n ${controller.businesses}');
    // print('catalogs: \n ${controller.catalogs}');
    // print('everyThingLoaded: \n ${controller.everyThingLoaded}');
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: !everyThingLoaded ? Center(
              child: CircularProgressIndicator(),) : Column(children: [
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(color: ColorConstant.whiteA700),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                width: size.width,
                                margin: EdgeInsets.only(
                                    top: getVerticalSize(27.00)),
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(10.00),
                                        right: getHorizontalSize(16.00)),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          IconButton(
                                            icon: Icon(
                                                Icons.arrow_back
                                            ),
                                            onPressed: () => Get.back(),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Expanded(
                                            child: Container(
                                                width: getHorizontalSize(
                                                    123.00),
                                                margin: EdgeInsets.only(
                                                    top: getVerticalSize(1.00),
                                                    bottom:
                                                    getVerticalSize(1.00)),
                                                child: Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisSize:
                                                    MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .only(
                                                              top:
                                                              getVerticalSize(
                                                                  3.00),
                                                              bottom:
                                                              getVerticalSize(
                                                                  3.00)),
                                                          child: Container(
                                                              height:
                                                              getSize(16.00),
                                                              width:
                                                              getSize(16.00),
                                                              child: SvgPicture
                                                                  .asset(
                                                                  ImageConstant
                                                                      .imgSearchicon,
                                                                  fit: BoxFit
                                                                      .fill))),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .only(
                                                              left:
                                                              getHorizontalSize(
                                                                  8.00)),
                                                          child: Text(
                                                              "lbl_search_product"
                                                                  .tr,
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: AppStyle
                                                                  .textStylePoppinsregular12
                                                                  .copyWith(
                                                                  fontSize:
                                                                  getFontSize(
                                                                      12),
                                                                  letterSpacing:
                                                                  0.50)))
                                                    ])),
                                          ),
                                          Container(
                                              width: getHorizontalSize(64.00),
                                              child: Row(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                  MainAxisSize.min,
                                                  children: [
                                                    GestureDetector(
                                                        onTap: () {
                                                          onTapImgLoveicon();
                                                        },
                                                        child: Container(
                                                            height:
                                                            getSize(24.00),
                                                            width:
                                                            getSize(24.00),
                                                            child: SvgPicture
                                                                .asset(
                                                                ImageConstant
                                                                    .imgLoveicon,
                                                                fit: BoxFit
                                                                    .fill))),
                                                    Container(
                                                        height: getSize(24.00),
                                                        width: getSize(24.00),
                                                        margin: EdgeInsets.only(
                                                            left:
                                                            getHorizontalSize(
                                                                16.00)),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .topRight,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                  Alignment
                                                                      .centerLeft,
                                                                  child:
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapImgNotificationic();
                                                                      },
                                                                      child: Container(
                                                                          height: getSize(
                                                                              24.00),
                                                                          width: getSize(
                                                                              24.00),
                                                                          child: SvgPicture
                                                                              .asset(
                                                                              ImageConstant
                                                                                  .imgNotificationic,
                                                                              fit: BoxFit
                                                                                  .fill)))),
                                                              Align(
                                                                  alignment:
                                                                  Alignment
                                                                      .topRight,
                                                                  child: Padding(
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                          left: getHorizontalSize(
                                                                              10.00),
                                                                          right: getHorizontalSize(
                                                                              2.00),
                                                                          bottom: getVerticalSize(
                                                                              10.00)),
                                                                      child: Container(
                                                                          height: getSize(
                                                                              8.00),
                                                                          width: getSize(
                                                                              8.00),
                                                                          child: SvgPicture
                                                                              .asset(
                                                                              ImageConstant
                                                                                  .imgNotificationin,
                                                                              fit: BoxFit
                                                                                  .fill))))
                                                            ]))
                                                  ]))
                                        ]))),
                            Expanded(
                                child: SingleChildScrollView(
                                    padding: EdgeInsets.only(
                                        top: getVerticalSize(43.00)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                  getHorizontalSize(16.00),
                                                  right:
                                                  getHorizontalSize(16.00)),
                                              child: CarouselSlider.builder(
                                                  options: CarouselOptions(
                                                      height:
                                                      getVerticalSize(
                                                          206.00),
                                                      initialPage: 0,
                                                      autoPlay: true,
                                                      viewportFraction: 1.0,
                                                      enableInfiniteScroll:
                                                      false,
                                                      scrollDirection:
                                                      Axis.horizontal,
                                                      onPageChanged:
                                                          (index, reason) {
                                                        // controller
                                                        //     .silderIndex
                                                        //     .value = index;
                                                      }),
                                                  itemCount: 6,
                                                  // controller
                                                  //     .dashboardModelObj
                                                  //     .value
                                                  //     .group18ItemList
                                                  //     .length,
                                                  itemBuilder: (context,
                                                      index, realIndex) {
                                                    // Group18ItemModel model =
                                                    // controller
                                                    //     .dashboardModelObj
                                                    //     .value
                                                    //     .group18ItemList[index];
                                                    return Group18ItemWidget(
                                                        sixItems![index]);
                                                  })),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: getVerticalSize(
                                                      8.00),
                                                  margin: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      top: getVerticalSize(
                                                          16.00),
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  child: AnimatedSmoothIndicator(
                                                      activeIndex: 0,
                                                      count: 1,
                                                      axisDirection:
                                                      Axis.horizontal,
                                                      effect: ScrollingDotsEffect(
                                                          spacing: 8,
                                                          activeDotColor:
                                                          ColorConstant
                                                              .lightBlueA200,
                                                          dotColor:
                                                          ColorConstant
                                                              .blue50,
                                                          dotHeight: getVerticalSize(
                                                              8.00),
                                                          dotWidth: getHorizontalSize(
                                                              8.00))))),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: getVerticalSize(24.00)),
                                              child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: EdgeInsets
                                                            .only(
                                                            left:
                                                            getHorizontalSize(
                                                                16.00)),
                                                        child: Text(
                                                            "lbl_category".tr,
                                                            overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                            TextAlign.left,
                                                            style: AppStyle
                                                                .textStylePoppinsbold141
                                                                .copyWith(
                                                                fontSize:
                                                                getFontSize(
                                                                    14),
                                                                letterSpacing:
                                                                0.50))),
                                                    GestureDetector(
                                                        onTap: () {
                                                          onTapTxtMorecategory();
                                                        },
                                                        child: Padding(
                                                            padding: EdgeInsets
                                                                .only(
                                                                right:
                                                                getHorizontalSize(
                                                                    16.00)),
                                                            child: Text(
                                                                "lbl_more_category"
                                                                    .tr,
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .right,
                                                                style: AppStyle
                                                                    .textStylePoppinsbold142
                                                                    .copyWith(
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    letterSpacing:
                                                                    0.50))))
                                                  ])),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height:
                                                  getVerticalSize(120.00),
                                                  width:
                                                  getHorizontalSize(359.00),
                                                  child: ListView.builder(
                                                      padding: EdgeInsets
                                                          .only(
                                                          left:
                                                          getHorizontalSize(
                                                              16.00),
                                                          top:
                                                          getVerticalSize(
                                                              12.00)),
                                                      scrollDirection:
                                                      Axis.horizontal,
                                                      physics:
                                                      BouncingScrollPhysics(),
                                                      itemCount: catalogs!.length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return CategoriesItemWidget(
                                                            catalogs![index]);
                                                      }))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: GestureDetector(
                                                  // onTap: () {
                                                  //   onTapFlashsalehead();
                                                  // },
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                          getHorizontalSize(
                                                              16.00),
                                                          top: getVerticalSize(
                                                              24.00),
                                                          right:
                                                          getHorizontalSize(
                                                              16.00)),
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
                                                            Text(
                                                                "business"
                                                                    .tr,
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: AppStyle
                                                                    .textStylePoppinsbold141
                                                                    .copyWith(
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    letterSpacing:
                                                                    0.50)),
                                                            // Text(
                                                            //     'more business',
                                                            //     overflow:
                                                            //     TextOverflow
                                                            //         .ellipsis,
                                                            //     textAlign:
                                                            //     TextAlign
                                                            //         .right,
                                                            //     style: AppStyle
                                                            //         .textStylePoppinsbold142
                                                            //         .copyWith(
                                                            //         fontSize:
                                                            //         getFontSize(
                                                            //             14),
                                                            //         letterSpacing:
                                                            //         0.50))
                                                          ])))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height:
                                                  getVerticalSize(120.00),
                                                  width:
                                                  getHorizontalSize(359.00),
                                                  child: ListView.builder(
                                                      padding: EdgeInsets
                                                          .only(
                                                          left:
                                                          getHorizontalSize(
                                                              16.00),
                                                          top:
                                                          getVerticalSize(
                                                              12.00)),
                                                      scrollDirection:
                                                      Axis.horizontal,
                                                      physics:
                                                      BouncingScrollPhysics(),
                                                      itemCount: businesses!.length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return BusinessesItemWidget(
                                                            businesses![index],
                                                            getUserWithBusiness(
                                                                businesses![index]
                                                                    .userNumber!));
                                                      }))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      top: getVerticalSize(
                                                          24.00),
                                                      right: getHorizontalSize(
                                                          16.00)),
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
                                                        Text("lbl_mega_sale".tr,
                                                            overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                            TextAlign.left,
                                                            style: AppStyle
                                                                .textStylePoppinsbold141
                                                                .copyWith(
                                                                fontSize:
                                                                getFontSize(
                                                                    14),
                                                                letterSpacing:
                                                                0.50)),
                                                        // Text("lbl_see_more".tr,
                                                        //     overflow:
                                                        //     TextOverflow
                                                        //         .ellipsis,
                                                        //     textAlign:
                                                        //     TextAlign.right,
                                                        //     style: AppStyle
                                                        //         .textStylePoppinsbold142
                                                        //         .copyWith(
                                                        //         fontSize:
                                                        //         getFontSize(
                                                        //             14),
                                                        //         letterSpacing:
                                                        //         0.50))
                                                      ]))),
                                          // Align(
                                          //     alignment: Alignment.centerRight,
                                          //     child: Container(
                                          //         height:
                                          //         getVerticalSize(250.00),
                                          //         width:
                                          //         getHorizontalSize(455.00),
                                          //         child: Obx(() =>
                                          //             ListView.builder(
                                          //                 padding: EdgeInsets
                                          //                     .only(
                                          //                     left:
                                          //                     getHorizontalSize(
                                          //                         16.00),
                                          //                     top:
                                          //                     getVerticalSize(
                                          //                         12.00)),
                                          //                 scrollDirection:
                                          //                 Axis.horizontal,
                                          //                 physics:
                                          //                 BouncingScrollPhysics(),
                                          //                 itemCount: controller
                                          //                     .dashboardModelObj
                                          //                     .value
                                          //                     .megasaleItemList
                                          //                     .length,
                                          //                 itemBuilder:
                                          //                     (context, index) {
                                          //                   MegasaleItemModel
                                          //                   model =
                                          //                   controller
                                          //                       .dashboardModelObj
                                          //                       .value
                                          //                       .megasaleItemList[index];
                                          //                   return MegasaleItemWidget(
                                          //                       model);
                                          //                 })))),
                                          InkWell(
                                              onTap: ()=> Get.toNamed(AppRoutes.productDetailScreen, parameters: {'itemName':sixItems![6].itemName!,
                                                'itemImage':sixItems![6].itemImage!, 'itemDescription': sixItems![6].itemDescription!, 'itemRating':sixItems![6].itemRating!.toString(),
                                                'itemPrice': sixItems![6].itemPrice.toString(), 'catalogId':sixItems![6].catalogId!, 'itemId': sixItems![6].itemId!}),
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            16.00),
                                                        top: getVerticalSize(
                                                            29.00),
                                                        right: getHorizontalSize(
                                                            16.00)),
                                                    child: Image.network(
                                                        sixItems![6].itemImage!,
                                                        height: getVerticalSize(
                                                            206.00),
                                                        width: getHorizontalSize(
                                                            343.00),
                                                        fit: BoxFit.fill))),
                                          ),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      top: getVerticalSize(
                                                          16.00),
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  child: GridView.builder(
                                                      shrinkWrap: true,
                                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                          mainAxisExtent:
                                                          getVerticalSize(
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
                                                      itemCount: 4,
                                                      itemBuilder:
                                                          (context, index) {
                                                        // DashboardItemModel
                                                        // model =
                                                        // controller
                                                        //     .dashboardModelObj
                                                        //     .value
                                                        //     .dashboardItemList[index];
                                                        return DashboardItemWidget(
                                                            sixItems![index +
                                                                7]);
                                                      }))),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: getVerticalSize(13.00)),
                                              child: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.min,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  children: []))
                                        ])))
                          ]))),
              // Container(
              //     height: getVerticalSize(66.00),
              //     width: size.width,
              //     decoration: BoxDecoration(color: ColorConstant.whiteA700),
              //     child: Stack(children: [
              //       Align(
              //           alignment: Alignment.bottomLeft,
              //           child: Padding(
              //               padding:
              //               EdgeInsets.only(top: getVerticalSize(10.00)),
              //               child: Row(
              //                   mainAxisAlignment:
              //                   MainAxisAlignment.spaceEvenly,
              //                   crossAxisAlignment: CrossAxisAlignment.center,
              //                   mainAxisSize: MainAxisSize.max,
              //                   children: [
              //                     Column(
              //                         mainAxisSize: MainAxisSize.min,
              //                         crossAxisAlignment:
              //                         CrossAxisAlignment.center,
              //                         mainAxisAlignment:
              //                         MainAxisAlignment.start,
              //                         children: [
              //                           Padding(
              //                               padding: EdgeInsets.only(
              //                                   left: getHorizontalSize(26.00),
              //                                   right:
              //                                   getHorizontalSize(25.00)),
              //                               child: Container(
              //                                   height: getVerticalSize(23.74),
              //                                   width: getHorizontalSize(24.00),
              //                                   child: SvgPicture.asset(
              //                                       ImageConstant.imgHomeicon,
              //                                       fit: BoxFit.fill))),
              //                           Align(
              //                               alignment: Alignment.centerLeft,
              //                               child: Padding(
              //                                   padding: EdgeInsets.only(
              //                                       top: getVerticalSize(3.95),
              //                                       bottom:
              //                                       getVerticalSize(0.00)),
              //                                   child: Text("lbl_home".tr,
              //                                       overflow:
              //                                       TextOverflow.ellipsis,
              //                                       textAlign: TextAlign.center,
              //                                       style: AppStyle
              //                                           .textStylePoppinsbold101
              //                                           .copyWith(
              //                                           fontSize:
              //                                           getFontSize(10),
              //                                           letterSpacing:
              //                                           0.50))))
              //                         ]),
              //                     Column(
              //                         mainAxisSize: MainAxisSize.min,
              //                         crossAxisAlignment:
              //                         CrossAxisAlignment.center,
              //                         mainAxisAlignment:
              //                         MainAxisAlignment.start,
              //                         children: [
              //                           Padding(
              //                               padding: EdgeInsets.only(
              //                                   left: getHorizontalSize(26.00),
              //                                   right:
              //                                   getHorizontalSize(25.00)),
              //                               child: Container(
              //                                   height: getVerticalSize(23.74),
              //                                   width: getHorizontalSize(24.00),
              //                                   child: SvgPicture.asset(
              //                                       ImageConstant
              //                                           .imgExploreicon,
              //                                       fit: BoxFit.fill))),
              //                           Align(
              //                               alignment: Alignment.centerLeft,
              //                               child: Padding(
              //                                   padding: EdgeInsets.only(
              //                                       top: getVerticalSize(3.95),
              //                                       bottom:
              //                                       getVerticalSize(0.00)),
              //                                   child: Text("lbl_explore".tr,
              //                                       overflow:
              //                                       TextOverflow.ellipsis,
              //                                       textAlign: TextAlign.center,
              //                                       style: AppStyle
              //                                           .textStylePoppinsregular10
              //                                           .copyWith(
              //                                           fontSize:
              //                                           getFontSize(10),
              //                                           letterSpacing:
              //                                           0.50))))
              //                         ]),
              //                     Column(
              //                         mainAxisSize: MainAxisSize.min,
              //                         crossAxisAlignment:
              //                         CrossAxisAlignment.center,
              //                         mainAxisAlignment:
              //                         MainAxisAlignment.start,
              //                         children: [
              //                           Padding(
              //                               padding: EdgeInsets.only(
              //                                   left: getHorizontalSize(26.00),
              //                                   right:
              //                                   getHorizontalSize(25.00)),
              //                               child: Container(
              //                                   height: getVerticalSize(23.74),
              //                                   width: getHorizontalSize(24.00),
              //                                   child: SvgPicture.asset(
              //                                       ImageConstant.imgCarticon,
              //                                       fit: BoxFit.fill))),
              //                           Align(
              //                               alignment: Alignment.centerLeft,
              //                               child: Padding(
              //                                   padding: EdgeInsets.only(
              //                                       top: getVerticalSize(3.95),
              //                                       bottom:
              //                                       getVerticalSize(0.00)),
              //                                   child: Text("lbl_cart".tr,
              //                                       overflow:
              //                                       TextOverflow.ellipsis,
              //                                       textAlign: TextAlign.center,
              //                                       style: AppStyle
              //                                           .textStylePoppinsregular10
              //                                           .copyWith(
              //                                           fontSize:
              //                                           getFontSize(10),
              //                                           letterSpacing:
              //                                           0.50))))
              //                         ]),
              //                     Column(
              //                         mainAxisSize: MainAxisSize.min,
              //                         crossAxisAlignment:
              //                         CrossAxisAlignment.center,
              //                         mainAxisAlignment:
              //                         MainAxisAlignment.start,
              //                         children: [
              //                           Padding(
              //                               padding: EdgeInsets.only(
              //                                   left: getHorizontalSize(26.00),
              //                                   right:
              //                                   getHorizontalSize(25.00)),
              //                               child: Container(
              //                                   height: getVerticalSize(23.74),
              //                                   width: getHorizontalSize(24.00),
              //                                   child: SvgPicture.asset(
              //                                       ImageConstant.imgOffericon,
              //                                       fit: BoxFit.fill))),
              //                           Align(
              //                               alignment: Alignment.centerLeft,
              //                               child: Padding(
              //                                   padding: EdgeInsets.only(
              //                                       top: getVerticalSize(3.95),
              //                                       bottom:
              //                                       getVerticalSize(0.00)),
              //                                   child: Text("lbl_offer".tr,
              //                                       overflow:
              //                                       TextOverflow.ellipsis,
              //                                       textAlign: TextAlign.center,
              //                                       style: AppStyle
              //                                           .textStylePoppinsregular10
              //                                           .copyWith(
              //                                           fontSize:
              //                                           getFontSize(10),
              //                                           letterSpacing:
              //                                           0.50))))
              //                         ]),
              //                     Column(
              //                         mainAxisSize: MainAxisSize.min,
              //                         crossAxisAlignment:
              //                         CrossAxisAlignment.center,
              //                         mainAxisAlignment:
              //                         MainAxisAlignment.start,
              //                         children: [
              //                           Padding(
              //                               padding: EdgeInsets.only(
              //                                   left: getHorizontalSize(26.00),
              //                                   right:
              //                                   getHorizontalSize(25.00)),
              //                               child: Container(
              //                                   height: getVerticalSize(23.74),
              //                                   width: getHorizontalSize(24.00),
              //                                   child: SvgPicture.asset(
              //                                       ImageConstant.imgUsericon,
              //                                       fit: BoxFit.fill))),
              //                           Align(
              //                               alignment: Alignment.centerLeft,
              //                               child: Padding(
              //                                   padding: EdgeInsets.only(
              //                                       top: getVerticalSize(3.95),
              //                                       bottom:
              //                                       getVerticalSize(0.00)),
              //                                   child: Text("lbl_account".tr,
              //                                       overflow:
              //                                       TextOverflow.ellipsis,
              //                                       textAlign: TextAlign.center,
              //                                       style: AppStyle
              //                                           .textStylePoppinsregular10
              //                                           .copyWith(
              //                                           fontSize:
              //                                           getFontSize(10),
              //                                           letterSpacing:
              //                                           0.50))))
              //                         ])
              //                   ])))
              //     ]))
            ])));
  }

  onTapProduct() {
    Get.toNamed(AppRoutes.productDetailScreen);
  }

  onTapImgLoveicon() {
    Get.toNamed(AppRoutes.favoriteProductScreen);
  }

  onTapImgNotificationic() {
    Get.toNamed(AppRoutes.notificationScreen);
  }

  onTapTxtMorecategory() {
    Get.toNamed(AppRoutes.listCategoryScreen);
  }

  onTapFlashsalehead() {
    Get.toNamed(AppRoutes.offerScreen);
  }
}
