class ServiceModel {
  final String? title;
  final String? description;
  final String? icon;
  final String? backgroundImage;

  ServiceModel({
    this.title,
    this.description,
    this.icon,
    this.backgroundImage,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      title: json['title'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
      backgroundImage: json['backgroundImage'] as String?,
    );
  }
}
