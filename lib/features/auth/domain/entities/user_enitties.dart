class UserEntity {
  final String id;
  final String? name;
  final String email;
  final String? image;
  final String role;
  final String? phone;
  final String? address;
  final String token;
  final String refreshToken;
  UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.image,
    required this.role,
    required this.token,
    required this.refreshToken,
  });
}
