class Contact {
  int? userNumber;
  int? usersContact;
  String? givenName;
  String? contactPhotoURL;
  String? contactBio;


  Contact({this.userNumber, this.usersContact, this.givenName,
      this.contactPhotoURL, this.contactBio});

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      userNumber: json['userNumber'],
      usersContact: json['usersContact'],
      givenName: json['givenName'],
      contactPhotoURL: json['contactPhotoURL'],
      contactBio: json['contactBio'],
    );
  }

  @override
  String toString() {
    return 'Contact{userNumber: $userNumber, usersContact: $usersContact, givenName: $givenName, contactPhotoURL: $contactPhotoURL, contactBio: $contactBio}';
  }
}
