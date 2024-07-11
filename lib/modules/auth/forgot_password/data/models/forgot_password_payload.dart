class ForgotPasswordPayload {
  String email;

  ForgotPasswordPayload({required this.email});

  Map<String, dynamic> toJson() => {
    'email': email,
  };
}