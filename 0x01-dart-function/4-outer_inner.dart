
void outer(String name, String id) {
  String inner() {
    List<String> names = name.split(' ');
    return "Hello Agent ${names.last.substring(0,1)}.${names.first} your id is $id";
  }
  print(inner());
}