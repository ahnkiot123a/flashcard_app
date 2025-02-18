class Vocabulary {
  int? id;
  String? hiragana;
  String? kanji;
  String? description;
  String? mean;
  int? categoryId;
  List<int>? kanjiId;
  List<int>? synonym;
  List<int>? antonym;

  Vocabulary({this.id, this.hiragana, this.kanji, this.description, this.mean, this.categoryId, this.kanjiId, this.synonym, this.antonym});

  Vocabulary.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    hiragana = json['hiragana'];
    kanji = json['kanji'];
    description = json['description'];
    mean = json['mean'];
    categoryId = json['category_id'];
    kanjiId = json['kanji_id'].cast<int>();
    synonym = json['synonym'].cast<int>();
    antonym = json['antonym'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['hiragana'] = hiragana;
    data['kanji'] = kanji;
    data['description'] = description;
    data['mean'] = mean;
    data['category_id'] = categoryId;
    data['kanji_id'] = kanjiId;
    data['synonym'] = synonym;
    data['antonym'] = antonym;
    return data;
  }
}
