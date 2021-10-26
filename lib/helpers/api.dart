import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List> getData(url) async {
  final response = await http.get(Uri.parse(url));
  final extractedData = json.decode(response.body) as Map<String, dynamic>;

  final apiData = extractedData['givenInputtedGrid'] as List;
  return apiData;
}
