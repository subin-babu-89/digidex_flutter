import 'dart:convert';

import 'package:digidex_flutter/src/repository/model/digimon_detail_response/digimon_detail_response.dart';
import 'package:http/http.dart' as http;

import 'model/digimon_list_response/digimon_list_response.dart';

class DigimonRepository {
  Future<DigimonListResponse> getDigimonList({required int pageNumber}) async {
    final response = await http
        .get(Uri.parse('https://digi-api.com/api/v1/digimon?pageSize=30'));
    return DigimonListResponse.fromJson(jsonDecode(response.body));
  }

  Future<DigimonDetailResponse> getDigimonDetails(
      {required String digimonId}) async {
    final response = await http
        .get(Uri.parse('https://digi-api.com/api/v1/digimon/${digimonId}'));
    return DigimonDetailResponse.fromJson(jsonDecode(response.body));
  }
}
