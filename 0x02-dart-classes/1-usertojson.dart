class User {
  String name = "";
  int age = 0;
  double height = 0.0;

  User({required String name,required int age,required double height}) {
    this.name = name;
    this.age = age;
    this.height = height;
  }

  Map<String, dynamic> toJson() {
    return {'name': this.name, 'age': this.age, 'height': this.height};
  }
}