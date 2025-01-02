import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:prayer/models/prayers_model.dart';




Future<PrayerModel?> getprayertimes() async {
  final response = await http.get(Uri.parse('https://api.aladhan.com/v1/calendarByCity?country=Egypt&city=Cairo&month=1&year=2025&method=4'));

  if (response.statusCode == 200) {
    Map<String,dynamic> decoded = json.decode(response.body);
    return PrayerModel.fromJson(decoded);
  }
  return null;
}


