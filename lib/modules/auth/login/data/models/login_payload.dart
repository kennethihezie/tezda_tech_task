class LoginPayload {
  String email, password;
  bool keepMeLoggedIn;

  LoginPayload({required this.email, required this.password, this.keepMeLoggedIn = false});

  Map<String, dynamic> toJson() => {
    'email': email,
    'password': password,
  };
}