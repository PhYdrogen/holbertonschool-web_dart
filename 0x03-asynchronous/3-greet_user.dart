import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    return "Hello ${jsonDecode(await fetchUserData())['username']}";
  } catch (err) {
    print('error caught: $err');
    throw err;
  }
}

Future<String> loginUser() async {
  try {
    if (await checkCredentials()) {
      print('There is a user: true');
      return await greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (err) {
    print('error caught: $err');
    throw err;
  }
}
