import 'dart:convert';

import 'util.dart';

Future<String> getUserId() async {
  return jsonDecode(await fetchUserData())["id"];
}