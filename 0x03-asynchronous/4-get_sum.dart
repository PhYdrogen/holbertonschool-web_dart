import 'dart:convert';

import '4-util.dart';

Future calculateTotal() async {
  try {
    final String id = jsonDecode(await fetchUserData())["id"];
    final List<dynamic> cmd = await jsonDecode(await fetchUserOrders(id));
    var ok = cmd
        .map((val) async => await jsonDecode(await fetchProductPrice(val)))
        .toList();
    return (await Future.wait(ok)).reduce((val, elem) => val + elem);
  } catch (err) {
    return -1;
  }
}
