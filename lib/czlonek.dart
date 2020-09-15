class MemberGithub {
  final String login;
  final String avatar_url;
  final String url;
  final String name;
  final String company;
  final String blog;
  final String location;
  final String email;
  final String bio;

  MemberGithub({this.login, this.avatar_url, this.url, this.name, this.company, this.blog, this.location, this.email, this.bio});

  factory MemberGithub.fromJson(Map<String, dynamic> json){
    return MemberGithub(
      login: json['login'], //? json['login'] : null,
      avatar_url: json['avatar_url'], //? json['avatar_url'] : null,
      url: json['url'], //? json['url'] : null,
      name: json['name'],// ? json['name'] : null,
      company: json['company'],// ? json['company'] : null,
      blog: json['blog'],// ? json['blog'] : null,
      location: json['location'],// ? json['location'] : null,
      email: json['email'],// ? json['email'] : null,
      bio: json['bio']// ? json['bio'] : null
    );
  }
}