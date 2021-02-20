class Section {
  final int id;
  final String name;
  final String description;
  final bool isVisible;
  final String icon;

  Section({this.id, this.name, this.description, this.isVisible, this.icon});

  //create Section object from JSON object
  factory Section.fromJson(Map<String, dynamic> json){
    return Section(
      id: json['id'], //? json['login'] : null,
      name: json['name'], //? json['avatar_url'] : null,
      description: json['description'], //? json['url'] : null,
      isVisible: json['isVisible'],// ? json['name'] : null,
      icon: json['icon'],// ? json['company'] : null,
    );
  }
}