import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'dart:convert';

import 'colors.dart';
import 'czlonek.dart';
import 'czlonkowie_szczegoly.dart';

Future<List<MemberApi>> fetchMembers() async {
  final response = await http.get("http://10.0.2.2:8000/api/profiles/"); //will be replaced with original api endpoint

//  String test = '[{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false}]';

  if(response.statusCode == 200){
   var memberObjJson = json.decode(utf8.decode(response.bodyBytes)) as List;
   List<MemberApi> memberList= memberObjJson.map((memberJson) => MemberApi.fromJson(memberJson)).toList(); //create list of MemberApi object
   return memberList; //return list of MemberApi object
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
  final Future<List<MemberApi>> member = fetchMembers(); //function to fetch members from Api

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlack,
      body: Stack(
        children: <Widget>[
          Rectangle(), //background
          Column(
            children: [
              //back bar
              Row(
                children: <Widget>[
                  GestureDetector(
                    //back button
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
                child: FutureBuilder<List<MemberApi>>(
                  future: member,
                  builder: (context, snapshot) {
                    if(snapshot.hasData){
                      //if members is loaded
                      return
                        GridView.count(
                            padding: EdgeInsets.all(0),
                            crossAxisCount: 3,
                            children: snapshot.data.map((MemberApi member) { //create list of MemberApi objects from JSON object
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: GestureDetector(
                                      //navigate to MemberApi details
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                            MaterialPageRoute(builder: (context) => CzlonkowieSzczegolyPage(member: member)));
                                      },
                                      child:  Container(
                                        width: MediaQuery.of(context).size.width*0.23, //width and height must be the same to widget looks like square
                                        height: MediaQuery.of(context).size.width*0.23,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            border: Border.all(
                                                color: //specify color of border
                                                snapshot.data.indexOf(member)%5 == 0 ? magenta :
                                                snapshot.data.indexOf(member)%5 == 1 ? green :
                                                snapshot.data.indexOf(member)%5 == 2 ? red :
                                                snapshot.data.indexOf(member)%5 == 3 ? blue : yellow,
                                                width: 3
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(member.avatar), //image from internet
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                    )
                                  ),
                                  //User name
                                  Text(member.user.username, style: GoogleFonts.alegreyaSansSC(
                                      fontSize: 15,
                                      textStyle: TextStyle(color: Colors.white)))
                                ],
                              );
                            }).toList());
                    } else if (snapshot.hasError){
                      return Text("${snapshot.error}");
                    }

                    return Center(
                      //if members is loading
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

//background
class Rectangle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(),
      painter: RectanglePainter(),
    );
  }
}

//paints background
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