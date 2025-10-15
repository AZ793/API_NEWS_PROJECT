class UserToken {
  final String accessToken;
  final String tokenType;

  const UserToken({required this.accessToken, required this.tokenType});

  factory UserToken.fromJson(Map<String, dynamic> json) {
    return UserToken(
      accessToken: json['access_token'] ?? '',
      tokenType: json['token_type'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {'access_token': accessToken, 'token_type': tokenType};
  }
}
