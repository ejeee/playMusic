class Article {
  final int id;
  final String title;
  final String imageUrl;

  Article({
    required this.id,
    required this.title,
    required this.imageUrl,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id'] as int,
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
    );
  }
}
