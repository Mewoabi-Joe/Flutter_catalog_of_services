import '../../initial/models/catalog.dart';
import '../../initial/services/catalog_service.dart';
import '../list_category_screen/widgets/list_category_item_widget.dart';
import 'controller/list_category_controller.dart';
import 'models/list_category_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListCategoryScreen extends StatefulWidget {
  @override
  State<ListCategoryScreen> createState() => _ListCategoryScreenState();
}

class _ListCategoryScreenState extends State<ListCategoryScreen> {
  List<Catalog>? catalogs;
  CatalogService catalogService = CatalogService();

  void getAllCatalogs() async {
    List<Catalog> catalogs =
        await catalogService.fetchAllCatalogsOfBusinesses();
    setState(() {
      this.catalogs = catalogs;
    });
  }

  @override
  void initState() {
    getAllCatalogs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: catalogs == null
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
                                "lbl_category".tr,
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
                              itemCount: catalogs!.length,
                              itemBuilder: (context, index) {
                                // ListCategoryItemModel model = controller
                                //     .listCategoryModelObj
                                //     .value
                                //     .listCategoryItemList[index];
                                return ListCategoryItemWidget(
                                  catalogs![index],
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
    );
  }
}
