class Category {
  int? id;
  String? name;
  String? description;
  String? book;
  String? image;

  Category({this.id, this.name, this.description, this.book, this.image});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    book = json['book'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['book'] = book;
    data['image'] = image;
    return data;
  }
}
