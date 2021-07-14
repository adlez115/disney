import 'package:dio/dio.dart';
import 'package:apidisney/model/model_disney.dart';

class ProviderDisney{
  final _url = 'https://api.disneyapi.dev/characters';
  final _http = Dio();

  Future<List<DisneyModel>> obtenerDisney() async {
    final response = await _http.get(_url);
    List<dynamic> data = response.data['data'];
    final listaDisney =
        data.map((data) => DisneyModel.fromMapJson(data)).toList();

    print(data);
    return listaDisney;
  }
}