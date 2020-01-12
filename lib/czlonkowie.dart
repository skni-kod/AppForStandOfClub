import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'dart:convert';

import 'colors.dart';
import 'members.dart';
import 'czlonkowie_szczegoly.dart';

Future<List<Member>> fetchMembers() async {
  final response = await http.get("https://api.github.com/orgs/skni-kod/members");

//  String test = '[{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false}]';

  if(response.statusCode == 200){
   var memberObjJson = jsonDecode(response.body) as List;
   List<Member> memberList= memberObjJson.map((memberJson) => Member.fromJson(memberJson)).toList();
   return memberList;
  } else{
    throw Exception("Nie udało się pobrać");
  }
}

class CzlonkowiePage extends StatefulWidget {
  CzlonkowiePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CzlonkowiePageState createState() => _CzlonkowiePageState();
}

class _CzlonkowiePageState extends State<CzlonkowiePage>{
  final Future<List<Member>> member = fetchMembers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlack,
      body: Stack(
        children: <Widget>[
          Rectangle(),
          Column(
            children: [
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: ()
                    {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: Icon(Icons.arrow_back, size: 50, color: Colors.white,),
                  ),
                  )
                ],
              ),
              Flexible(
                child: FutureBuilder<List<Member>>(
                  future: member,
                  builder: (context, snapshot) {
                    if(snapshot.hasData){
                      return
                        GridView.count(
                            padding: EdgeInsets.all(0),
                            crossAxisCount: 3,
                            children: snapshot.data.map((Member member) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                            MaterialPageRoute(builder: (context) => CzlonkowieSzczegolyPage(url: member.url)));
                                      },
                                      child:  Container(
                                        width: MediaQuery.of(context).size.width*0.23,
                                        height: MediaQuery.of(context).size.width*0.23,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            border: Border.all(
                                                color:
                                                snapshot.data.indexOf(member)%5 == 0 ? magenta :
                                                snapshot.data.indexOf(member)%5 == 1 ? green :
                                                snapshot.data.indexOf(member)%5 == 2 ? red :
                                                snapshot.data.indexOf(member)%5 == 3 ? blue : yellow,
                                                width: 3
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(member.avatar_url),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                    )
                                  ),
                                  Text(member.login, style: GoogleFonts.alegreyaSansSC(
                                      fontSize: 15,
                                      textStyle: TextStyle(color: Colors.white)))
                                ],
                              );
                            }).toList());
                    } else if (snapshot.hasError){
                      return Text("${snapshot.error}");
                    }

                    return Center(
                      child: CircularProgressIndicator(
                      ),
                    );
                  },
                ),
              )],
          )
        ],
      ),
    );
  }
}

class Rectangle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(),
      painter: RectanglePainter(),
    );
  }
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    var paint = Paint();

    paint.color = grey;
    paint.style = PaintingStyle.fill;

    path.lineTo(size.width*0.7,0);
    path.lineTo(0, size.height*0.37);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}