import 'package:business/initial/models/business.dart';
import 'package:business/initial/services/catalog_service.dart';
import 'package:business/initial/services/item_service.dart';

import '../../../initial/models/catalog.dart';
import '../../../initial/models/item.dart';
import '../../../initial/services/business_service.dart';
import '/core/app_export.dart';
import 'package:business/presentation/dashboard_screen/models/dashboard_model.dart';

class DashboardController extends GetxController with StateMixin<dynamic> {
  Rx<DashboardModel> dashboardModelObj = DashboardModel().obs;

  Rx<int> silderIndex = 0.obs;

  CatalogService catalogService = CatalogService();
  ItemService itemService = ItemService();
  BusinessService businessService = BusinessService();
  List<Item>? sixItems;
  List<Business>? businesses;
  List<Catalog>? catalogs;
  bool everyThingLoaded = false;


  void getFiveItemsCategoriesBusinesses() async {
    List<Item> sixItems = await itemService.fetchSixItemsFromCatalogs();
    this.sixItems = sixItems;
    List<Catalog> catalogs = await catalogService.fetchAllCatalogsOfBusinesses();
    this.catalogs = catalogs;
    List<Business> businesses = await businessService.fetchAllBusinessesOfUsers();
    this.businesses = businesses;

    this.everyThingLoaded = true;
    update();
    // print("gottenBusinesses: $usersBusinesses");
  }
  @override
  void onInit() {

    super.onInit();
  }

  @override
  void onReady() {
    getFiveItemsCategoriesBusinesses();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
