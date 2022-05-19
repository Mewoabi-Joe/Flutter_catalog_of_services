class Item {
   String? catalogId;
   String? itemId;
   String? itemName;
   String? itemImage;
   String? itemDescription;
   double? itemPrice;
   double? itemRating;


  Item({this.catalogId, this.itemId, this.itemName,
    this.itemImage, this.itemDescription, this.itemPrice, this.itemRating});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      catalogId: json['catalogId'],
      itemId: json['itemId'],
      itemName: json['itemName'],
      itemImage: json['itemImage'],
      itemDescription: json['itemDescription'],
      itemPrice: json['itemPrice'],
      itemRating: json['itemRating'],
    );
  }

  @override
  String toString() {
    return 'Item{catalogId: $catalogId, itemId: $itemId, itemName: $itemName, itemImage: $itemImage, itemDescription: $itemDescription, itemPrice: $itemPrice, itemRating: $itemRating}';
  }
}
