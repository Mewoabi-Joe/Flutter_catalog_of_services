import 'package:business/initial/screens/pick_user_screen.dart';
import 'package:business/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:business/presentation/dashboard_screen/binding/dashboard_binding.dart';
import 'package:business/presentation/offer_screen/offer_screen.dart';
import 'package:business/presentation/offer_screen/binding/offer_binding.dart';
import 'package:business/presentation/favorite_product_screen/favorite_product_screen.dart';
import 'package:business/presentation/favorite_product_screen/binding/favorite_product_binding.dart';
import 'package:business/presentation/product_detail_screen/product_detail_screen.dart';
import 'package:business/presentation/product_detail_screen/binding/product_detail_binding.dart';
import 'package:business/presentation/review_product_screen/review_product_screen.dart';
import 'package:business/presentation/review_product_screen/binding/review_product_binding.dart';
import 'package:business/presentation/write_review_fill_screen/write_review_fill_screen.dart';
import 'package:business/presentation/write_review_fill_screen/binding/write_review_fill_binding.dart';
import 'package:business/presentation/notification_screen/notification_screen.dart';
import 'package:business/presentation/notification_screen/binding/notification_binding.dart';
import 'package:business/presentation/notification_offer_screen/notification_offer_screen.dart';
import 'package:business/presentation/notification_offer_screen/binding/notification_offer_binding.dart';
import 'package:business/presentation/notification_feed_screen/notification_feed_screen.dart';
import 'package:business/presentation/notification_feed_screen/binding/notification_feed_binding.dart';
import 'package:business/presentation/notification1_screen/notification1_screen.dart';
import 'package:business/presentation/notification1_screen/binding/notification1_binding.dart';
import 'package:business/presentation/explore_screen/explore_screen.dart';
import 'package:business/presentation/explore_screen/binding/explore_binding.dart';
import 'package:business/presentation/search_screen/search_screen.dart';
import 'package:business/presentation/search_screen/binding/search_binding.dart';
import 'package:business/presentation/search_result_screen/search_result_screen.dart';
import 'package:business/presentation/search_result_screen/binding/search_result_binding.dart';
import 'package:business/presentation/search_result1_screen/search_result1_screen.dart';
import 'package:business/presentation/search_result1_screen/binding/search_result1_binding.dart';
import 'package:business/presentation/list_category_screen/list_category_screen.dart';
import 'package:business/presentation/list_category_screen/binding/list_category_binding.dart';
import 'package:business/presentation/short_by_screen/short_by_screen.dart';
import 'package:business/presentation/short_by_screen/binding/short_by_binding.dart';
import 'package:business/presentation/filter_screen/filter_screen.dart';
import 'package:business/presentation/filter_screen/binding/filter_binding.dart';
import 'package:business/presentation/cart_screen/cart_screen.dart';
import 'package:business/presentation/cart_screen/binding/cart_binding.dart';
import 'package:business/presentation/ship_to_screen/ship_to_screen.dart';
import 'package:business/presentation/ship_to_screen/binding/ship_to_binding.dart';
import 'package:business/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:business/presentation/payment_method_screen/binding/payment_method_binding.dart';
import 'package:business/presentation/choose_credit_or_debit_card_screen/choose_credit_or_debit_card_screen.dart';
import 'package:business/presentation/choose_credit_or_debit_card_screen/binding/choose_credit_or_debit_card_binding.dart';
import 'package:business/presentation/success_screen/success_screen.dart';
import 'package:business/presentation/success_screen/binding/success_binding.dart';
import 'package:business/presentation/offer1_screen/offer1_screen.dart';
import 'package:business/presentation/offer1_screen/binding/offer1_binding.dart';
import 'package:business/presentation/account_screen/account_screen.dart';
import 'package:business/presentation/account_screen/binding/account_binding.dart';
import 'package:business/presentation/profile_screen/profile_screen.dart';
import 'package:business/presentation/profile_screen/binding/profile_binding.dart';
import 'package:business/presentation/order_screen/order_screen.dart';
import 'package:business/presentation/order_screen/binding/order_binding.dart';
import 'package:business/presentation/order_details_screen/order_details_screen.dart';
import 'package:business/presentation/order_details_screen/binding/order_details_binding.dart';
import 'package:business/presentation/add_address_screen/add_address_screen.dart';
import 'package:business/presentation/add_address_screen/binding/add_address_binding.dart';
import 'package:business/presentation/add_payment_screen/add_payment_screen.dart';
import 'package:business/presentation/add_payment_screen/binding/add_payment_binding.dart';
import 'package:business/presentation/credit_card_and_debit_screen/credit_card_and_debit_screen.dart';
import 'package:business/presentation/credit_card_and_debit_screen/binding/credit_card_and_debit_binding.dart';
import 'package:business/presentation/add_card_screen/add_card_screen.dart';
import 'package:business/presentation/add_card_screen/binding/add_card_binding.dart';
import 'package:business/presentation/lailyfa_febrina_card_screen/lailyfa_febrina_card_screen.dart';
import 'package:business/presentation/lailyfa_febrina_card_screen/binding/lailyfa_febrina_card_binding.dart';
import 'package:business/presentation/address_screen/address_screen.dart';
import 'package:business/presentation/address_screen/binding/address_binding.dart';
import 'package:business/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:business/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

import '../initial/screens/list_business_screen.dart';

class AppRoutes {
  static String dashboardScreen = '/dashboard_screen';

  static String offerScreen = '/offer_screen';

  static String favoriteProductScreen = '/favorite_product_screen';

  static String productDetailScreen = '/product_detail_screen';

  static String reviewProductScreen = '/review_product_screen';

  static String writeReviewFillScreen = '/write_review_fill_screen';

  static String notificationScreen = '/notification_screen';

  static String notificationOfferScreen = '/notification_offer_screen';

  static String notificationFeedScreen = '/notification_feed_screen';

  static String notification1Screen = '/notification1_screen';

  static String exploreScreen = '/explore_screen';

  static String searchScreen = '/search_screen';

  static String searchResultScreen = '/search_result_screen';

  static String searchResult1Screen = '/search_result1_screen';

  static String listCategoryScreen = '/list_category_screen';

  static String listBusinessScreen = '/list_business_screen';

  static String shortByScreen = '/short_by_screen';

  static String filterScreen = '/filter_screen';

  static String cartScreen = '/cart_screen';

  static String shipToScreen = '/ship_to_screen';

  static String paymentMethodScreen = '/payment_method_screen';

  static String chooseCreditOrDebitCardScreen =
      '/choose_credit_or_debit_card_screen';

  static String successScreen = '/success_screen';

  static String offer1Screen = '/offer1_screen';

  static String accountScreen = '/account_screen';

  static String profileScreen = '/profile_screen';

  static String orderScreen = '/order_screen';

  static String orderDetailsScreen = '/order_details_screen';

  static String addAddressScreen = '/add_address_screen';

  static String addPaymentScreen = '/add_payment_screen';

  static String creditCardAndDebitScreen = '/credit_card_and_debit_screen';

  static String addCardScreen = '/add_card_screen';

  static String lailyfaFebrinaCardScreen = '/lailyfa_febrina_card_screen';

  static String addressScreen = '/address_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static String pickUser = '/pick_user';

  static List<GetPage> pages = [
    GetPage(
      name: dashboardScreen,
      page: () => DashboardScreen(),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: offerScreen,
      page: () => OfferScreen(),
      bindings: [
        OfferBinding(),
      ],
    ),
    GetPage(
      name: favoriteProductScreen,
      page: () => FavoriteProductScreen(),
      bindings: [
        FavoriteProductBinding(),
      ],
    ),
    GetPage(
      name: productDetailScreen,
      page: () => ProductDetailScreen(),
      bindings: [
        ProductDetailBinding(),
      ],
    ),
    GetPage(
      name: reviewProductScreen,
      page: () => ReviewProductScreen(),
      bindings: [
        ReviewProductBinding(),
      ],
    ),
    GetPage(
      name: writeReviewFillScreen,
      page: () => WriteReviewFillScreen(),
      bindings: [
        WriteReviewFillBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: notificationOfferScreen,
      page: () => NotificationOfferScreen(),
      bindings: [
        NotificationOfferBinding(),
      ],
    ),
    GetPage(
      name: notificationFeedScreen,
      page: () => NotificationFeedScreen(),
      bindings: [
        NotificationFeedBinding(),
      ],
    ),
    GetPage(
      name: notification1Screen,
      page: () => Notification1Screen(),
      bindings: [
        Notification1Binding(),
      ],
    ),
    GetPage(
      name: exploreScreen,
      page: () => ExploreScreen(),
      bindings: [
        ExploreBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: searchResultScreen,
      page: () => SearchResultScreen(),
      bindings: [
        SearchResultBinding(),
      ],
    ),
    GetPage(
      name: searchResult1Screen,
      page: () => SearchResult1Screen(),
      bindings: [
        SearchResult1Binding(),
      ],
    ),
    GetPage(
      name: listCategoryScreen,
      page: () => ListCategoryScreen(),
      bindings: [
        ListCategoryBinding(),
      ],
    ),
    GetPage(
      name: listBusinessScreen,
      page: () => ListBusinessScreen(),

    ),
    GetPage(
      name: shortByScreen,
      page: () => ShortByScreen(),
      bindings: [
        ShortByBinding(),
      ],
    ),
    GetPage(
      name: filterScreen,
      page: () => FilterScreen(),
      bindings: [
        FilterBinding(),
      ],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(),
      bindings: [
        CartBinding(),
      ],
    ),
    GetPage(
      name: shipToScreen,
      page: () => ShipToScreen(),
      bindings: [
        ShipToBinding(),
      ],
    ),
    GetPage(
      name: paymentMethodScreen,
      page: () => PaymentMethodScreen(),
      bindings: [
        PaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: chooseCreditOrDebitCardScreen,
      page: () => ChooseCreditOrDebitCardScreen(),
      bindings: [
        ChooseCreditOrDebitCardBinding(),
      ],
    ),
    GetPage(
      name: successScreen,
      page: () => SuccessScreen(),
      bindings: [
        SuccessBinding(),
      ],
    ),
    GetPage(
      name: offer1Screen,
      page: () => Offer1Screen(),
      bindings: [
        Offer1Binding(),
      ],
    ),
    GetPage(
      name: accountScreen,
      page: () => AccountScreen(),
      bindings: [
        AccountBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: orderScreen,
      page: () => OrderScreen(),
      bindings: [
        OrderBinding(),
      ],
    ),
    GetPage(
      name: orderDetailsScreen,
      page: () => OrderDetailsScreen(),
      bindings: [
        OrderDetailsBinding(),
      ],
    ),
    GetPage(
      name: addAddressScreen,
      page: () => AddAddressScreen(),
      bindings: [
        AddAddressBinding(),
      ],
    ),
    GetPage(
      name: addPaymentScreen,
      page: () => AddPaymentScreen(),
      bindings: [
        AddPaymentBinding(),
      ],
    ),
    GetPage(
      name: creditCardAndDebitScreen,
      page: () => CreditCardAndDebitScreen(),
      bindings: [
        CreditCardAndDebitBinding(),
      ],
    ),
    GetPage(
      name: addCardScreen,
      page: () => AddCardScreen(),
      bindings: [
        AddCardBinding(),
      ],
    ),
    GetPage(
      name: lailyfaFebrinaCardScreen,
      page: () => LailyfaFebrinaCardScreen(),
      bindings: [
        LailyfaFebrinaCardBinding(),
      ],
    ),
    GetPage(
      name: addressScreen,
      page: () => AddressScreen(),
      bindings: [
        AddressBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => DashboardScreen(),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: pickUser,
      page: () => PickUserScreen(),
    )
  ];
}
