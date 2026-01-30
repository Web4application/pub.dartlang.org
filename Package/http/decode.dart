import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  final httpPackageUrl = Uri.https('dart.dev', '/f/packages/http.json');
  final httpPackageInfo = await http.read(httpPackageUrl);
  final httpPackageJson = json.decode(httpPackageInfo) as Map<String, dynamic>;
  print(httpPackageJson);
}
