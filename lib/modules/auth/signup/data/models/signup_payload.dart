class SignupPayload {
  String email, password, confirmPassword;

  SignupPayload({required this.email, required this.password, required this.confirmPassword});

  factory SignupPayload.fromJson(Map<String, dynamic> json) => SignupPayload(email: json['email'], password: json['password'], confirmPassword: json['confirmPassword']);

  Map<String, dynamic> toJson() => {
    'email': email,
    'password': password,
    'confirmPassword': confirmPassword
  };
}