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

  //create MemberGithub object from JSON object
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

class MemberApi {
  final int id;
  final User user;
  final String description;
  final String avatar;
  final List profile_links;

  MemberApi({this.id, this.user, this.description, this.avatar, this.profile_links});

  //create MemberApi object from JSON object
  factory MemberApi.fromJson(Map<String, dynamic> json){
    return MemberApi(
        id: json['id'], //? json['login'] : null,
        user: User.fromJson(json['user']), //? json['avatar_url'] : null,
        description: json['description'], //? json['url'] : null,
        avatar: json['avatar'] != null ? json['avatar'] : "https://avatars0.githubusercontent.com/u/32840726?v=4", //json['avatar'], ? json['name'] : null,
        profile_links: json['profile_links'],// ? json['company'] : null,
    );
  }
}

class User{
  final int id;
  final String username;
  final String email;
  final List groups;
  final int profile;
  final String first_name;
  final String last_name;

  User({this.id, this.username, this.email, this.groups, this.profile, this.first_name, this.last_name});

  //create User object from JSON object
  factory User.fromJson(Map<String, dynamic> json){
    return User(
        id: json['id'], //? json['login'] : null,
        username: json['username'], //? json['avatar_url'] : null,
        email: json['email'], //? json['url'] : null,
        groups: json['groups'],// ? json['name'] : null,
        profile: json['profile'],// ? json['company'] : null,
        first_name: json['first_name'],// ? json['blog'] : null,
        last_name: json['last_name'],// ? json['location'] : null,
    );
  }
}