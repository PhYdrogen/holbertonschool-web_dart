import '6-password.dart';

class User {
  int? id;
  String? name;
  int? age;
  double? height;
  String? _user_password;
  Password? _passwordObj;

  String? get user_password => _user_password;

  set user_password(String? pwd) {
    _user_password = pwd;
    _passwordObj = Password(password: pwd);
  }

  User({required this.id, required this.name, required this.age, required this.height, String? user_password}) {
    this.user_password = user_password;
  }

  Map<String, dynamic> toJson() {
    return {'id': this.id, 'name': this.name, 'age': this.age, 'height': this.height};
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'], 
      name: userJson['name'], 
      age: userJson['age'], 
      height: userJson['height'],
      user_password: userJson['user_password']
    );
  }

  @override
  String toString() {
    bool isValidPassword = _passwordObj?.isValid() ?? false;
    return 'User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height}, Password: $isValidPassword)';
  }
}