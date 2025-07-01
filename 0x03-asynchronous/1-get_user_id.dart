import 'dart:convert';

import '1-util.dart';

Future<String> getUserId() async {
  return jsonDecode(await fetchUserData())["id"];
}