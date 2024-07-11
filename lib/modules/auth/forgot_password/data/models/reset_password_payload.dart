class ResetPasswordPayload {
  String confirmPassword, newPassword;

  ResetPasswordPayload({required this.confirmPassword,  required this.newPassword});

  Map<String, dynamic> toJson() => {
    'newPassword': newPassword,
    'confirmPassword': confirmPassword
  };
}