import 'package:fruits_hub/features/auth/domain/entities/user_enitties.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.id,
    required super.name,
    required super.email,
    required super.phone,
    required super.address,
    required super.image,
    required super.role,
    required super.token,
    required super.refreshToken,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['user']['id'] as String,
      name: json['user']['user_name'] as String?,
      email: json['user']['email'] as String,
      phone: json['user']['phone'] as String?,
      address: json['user']['address'] as String?,
      image: json['user']['user_image'] as String?,
      role: json['user']['role'] as String,
      token: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user': {
        'id': id,
        'user_name': name,
        'email': email,
        'phone': phone,
        'address': address,
        'image': image,
        'role': role,
      },
      'access_token': token,
      'refresh_token': refreshToken,
    };
  }
}
