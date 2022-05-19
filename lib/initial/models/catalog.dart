class Catalog {
  String? businessId;
  String? catalogId;
  String? catalogName;
  String? catalogDescription;
  String? firstImageUrl;


  Catalog({this.businessId, this.catalogId, this.catalogName,
    this.catalogDescription, this.firstImageUrl});

  factory Catalog.fromJson(Map<String, dynamic> json) {
    return Catalog(
      businessId: json['businessId'],
      catalogId: json['catalogId'],
      catalogName: json['catalogName'],
      catalogDescription: json['catalogDescription'],
      firstImageUrl: json['firstImageUrl'],
    );
  }

  @override
  String toString() {
    return 'Catalog{businessId: $businessId, catalogId: $catalogId, catalogName: $catalogName, catalogDescription: $catalogDescription, firstImageUrl: $firstImageUrl}';
  }
}
