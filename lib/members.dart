class Member {
  final String login;
  final String avatar_url;
  final String url;

  Member({this.login, this.avatar_url, this.url});

  factory Member.fromJson(Map<String, dynamic> json){
    return Member(
      login: json['login'],
      avatar_url: json['avatar_url'],
      url: json['url']
    );
  }
}