class User {
  String? fullName, email, profileUrl;

  User({this.fullName, this.email, this.profileUrl});

  factory User.fromJson(Map<String, dynamic> json) => User(email: json['email'], fullName: json['fullName'], profileUrl: json['profileUrl']);

  Map<String, dynamic> toJson() => {
    'email': email,
    'fullName': fullName,
    'profileUrl': profileUrl
  };
}