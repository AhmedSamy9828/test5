class UserModel {
  late String userId, email, password;

  UserModel({
     required this.userId, required this.email, required this.password});

  UserModel.fromJson(Map<String, dynamic> map) {
    // ignore: unnecessary_null_comparison
    if (map == null) {
      return;
    }
    userId = map['userId'];
    email = map['email'];
    password = map['password'];
  }

  toJson() {
    return {
      'userId':userId,
      'email':email,
      'password':password,
    };
  }
}
