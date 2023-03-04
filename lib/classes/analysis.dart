class Analysis {
  final String? type;
  final String? tag;
  final String? description;
  final String? price;
  final String? resultTime;

  Analysis({
    required this.type,
    required this.description,
    required this.price,
    required this.resultTime,
    required this.tag,
  });

  Analysis.fromJson(Map<String, dynamic> json)
      : type = json['type'] ?? "",
        description = json['description'] ?? "",
        price = json['price'] ?? "",
        resultTime = json['resulttime'] ?? "",
        tag = json['tag'] ?? "";

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'description': description,
      'price': price,
      'resulttime': resultTime,
      'tag': tag,
    };
  }
}
