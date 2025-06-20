class User {
  int? id;
  String? name;
  int? age;
  double? height;

  User({required id, required String name,required int age,required double height}) {
    this.id = id;
    this.name = name;
    this.age = age;
    this.height = height;
  }

  Map<String, dynamic> toJson() {
    return {'id': this.id, 'name': this.name, 'age': this.age, 'height': this.height};
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(id: userJson['id'], name: userJson['name'], age: userJson['age'], height: userJson['height']);
  }

  @override
  String toString() {
    return 'User(id : ${this.id} ,name: ${this.name},  age: ${this.age}, height: ${this.height})';
  }
}