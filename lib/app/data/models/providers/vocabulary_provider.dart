import 'package:get/get.dart';

import '../vocabulary_model.dart';

class VocabularyProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Vocabulary.fromJson(map);
      if (map is List) {
        return map.map((item) => Vocabulary.fromJson(item)).toList();
      }
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Vocabulary?> getVocabulary(int id) async {
    final response = await get('vocabulary/$id');
    return response.body;
  }

  Future<Response<Vocabulary>> postVocabulary(Vocabulary vocabulary) async =>
      await post('vocabulary', vocabulary);
  Future<Response> deleteVocabulary(int id) async =>
      await delete('vocabulary/$id');
}
