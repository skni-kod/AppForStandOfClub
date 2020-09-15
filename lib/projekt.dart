import 'sekcja.dart';

class Projekt {
  final int id;
  final String title;
  final String text;
  final String creation_date;
  final String publication_date;
  final String repository_link;
  final Section section;

  Projekt({this.id, this.title, this.text, this.creation_date, this.publication_date, this.repository_link, this.section});

  factory Projekt.fromJson(Map<String, dynamic> json){
    return Projekt(
        id: json['id'], //? json['login'] : null,
        title: json['title'], //? json['avatar_url'] : null,
        text: json['text'], //? json['url'] : null,
        creation_date: json['creation_date'],// ? json['name'] : null,
        publication_date: json['publication_date'],// ? json['company'] : null,
        repository_link: json['repository_link'],// ? json['blog'] : null,
        section: Section.fromJson(json['section']),// ? json['location'] : null,
    );
  }
}