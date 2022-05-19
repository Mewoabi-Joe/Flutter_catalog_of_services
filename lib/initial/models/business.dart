class Business{
     int? userNumber;

     String? businessId;

     String? businessName;

     String? businessDescription;

     String? businessLocation;

     Map? error;

    List<dynamic>? threeImageUrls;

     List<dynamic>? itemCategories;

     // List<Map<String,List<int>>>? openHours;

     Business({this.userNumber, this.businessId, this.businessName,
       this.businessDescription, this.businessLocation, this.threeImageUrls,
     this.itemCategories, this.error
       // , this.openHours
     });

     factory Business.fromJson(Map<String, dynamic> json) {
       return Business(
         userNumber: json['userNumber'],
         businessId: json['businessId'],
         businessName: json['businessName'],
         businessDescription: json['businessDescription'],
         businessLocation: json['businessLocation'],
         threeImageUrls: json['threeImageUrls'],
         itemCategories: json['itemCategories'],
         // openHours: json['openHours'],
       );
     }

     @override
  String toString() {
    return 'Business{userNumber: $userNumber, businessId: $businessId, businessName: $businessName, businessDescription: $businessDescription, businessLocation: $businessLocation, threeImageUrls: $threeImageUrls, itemCategories: $itemCategories'
        // ', openHours: $openHours'
        '}';
  }
}