class User {
  int? userNumber;
  String? userPhotoUrl;
  String? userBio;
  String? userName;
  bool? isPublicAccount;
  bool? isBusinessAccount;
  String? email;

  User({this.userNumber, this.userPhotoUrl, this.userBio, this.userName, this.isPublicAccount, this.isBusinessAccount, this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userNumber: json['userNumber'],
      userName: json['userName'],
      userPhotoUrl: json['userPhotoUrl'],
      userBio: json['userBio'],
      isPublicAccount: json['isPublicAccount'],
      isBusinessAccount: json['isBusinessAccount'],
      email: json['email'],
    );
  }

  @override
  String toString() {
    return 'User{userNumber: $userNumber, userPhotoUrl: $userPhotoUrl, userBio: $userBio, userName: $userName, isPublicAccount: $isPublicAccount, isBusinessAccount: $isBusinessAccount, email: $email}';
  }
}
