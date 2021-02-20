import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'dart:convert';


import 'colors.dart';
import 'projekt.dart';
import 'projekt_szczegoly.dart';

//download list of projects
Future<List<Projekt>> fetchProjects() async {
  final response = await http.get("http://kod.prz.edu.pl/api/project/",headers: {'Content-Type': 'application/json'}); //should be replaced with original Api endpoint

//  String test = '[{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false},{"login": "Rav-Naz","id": 32840726,"node_id": "MDQ6VXNlcjMyODQwNzI2","avatar_url": "https://avatars0.githubusercontent.com/u/32840726?v=4","gravatar_id": "","url": "https://api.github.com/users/Rav-Naz","html_url": "https://github.com/Rav-Naz","followers_url": "https://api.github.com/users/Rav-Naz/followers","following_url": "https://api.github.com/users/Rav-Naz/following{/other_user}","gists_url": "https://api.github.com/users/Rav-Naz/gists{/gist_id}","starred_url": "https://api.github.com/users/Rav-Naz/starred{/owner}{/repo}","subscriptions_url": "https://api.github.com/users/Rav-Naz/subscriptions","organizations_url": "https://api.github.com/users/Rav-Naz/orgs","repos_url": "https://api.github.com/users/Rav-Naz/repos","events_url": "https://api.github.com/users/Rav-Naz/events{/privacy}","received_events_url": "https://api.github.com/users/Rav-Naz/received_events","type": "User","site_admin": false}]';

  if(response.statusCode == 200){
    var projectObjJson = json.decode(utf8.decode(response.bodyBytes)) as List;
    List<Projekt> projectList = projectObjJson.map((memberJson) => Projekt.fromJson(memberJson)).toList(); //create list of projects form JSON
    return projectList;
  } else{
    throw Exception("Nie udało się pobrać");
  }
}

class SekcjeIProjektyPage extends StatefulWidget {
  SekcjeIProjektyPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SekcjeIProjektyPageState createState() => _SekcjeIProjektyPageState();
}

class _SekcjeIProjektyPageState extends State<SekcjeIProjektyPage>{
  final Future<List<Projekt>> project = fetchProjects();

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
                  //back to project list
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
                child: FutureBuilder<List<Projekt>>(
                  future: project,
                  builder: (context, snapshot) {
                    if(snapshot.hasData){
                      //if projects are loaded
                      var list = snapshot.data;
                      list.sort((a,b) => a.section.id.compareTo(b.section.id));

                      List<Widget> printable = list.map<Widget>((pro){
                        return Container(
                              padding: EdgeInsets.only(bottom: 5, top: 5, right: 5),
                              child: GestureDetector(
                                //navigate to project details
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ProjektPage(projekt: pro,)));
                                },
                                child: Row(
                                  children: <Widget>[
                                    //project title
                                    Expanded(
                                      flex: 8,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(pro.title,
                                            style: GoogleFonts.alegreyaSansSC(
                                                fontSize: 17,
                                                textStyle: TextStyle(color: Colors.white)
                                            )),
                                      ),
                                    ),
                                    //navigation button
                                    Expanded(
                                      flex: 2,
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Icon(Icons.play_circle_filled,
                                            color:
                                            pro.section.id == 1 ? green :
                                            pro.section.id == 2 ? magenta :
                                            blue,
                                            size: 30),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                        );
                      }).toList();

                      //projects divided into sections
                      printable.insert(list.indexOf(list.firstWhere((el) => el.section.id == 1)), SectionName(1));
                      printable.insert(list.indexOf(list.firstWhere((el) => el.section.id == 2))+1, SectionName(2));
                      printable.insert(list.indexOf(list.firstWhere((el) => el.section.id == 3))+2, SectionName(3));

                      return ListView(
                          padding: EdgeInsets.all(0),
                          children: <Widget>[
                            Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                                children: printable
                              )
                            )
                          ]
                      );
                    } else if (snapshot.hasError){
                      return Text("${snapshot.error}");
                    }

                    return Center(
                      //if projects are loading
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

class SectionName extends StatelessWidget
{
  int sectionId = 1;

  SectionName(this.sectionId);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5, top: 5),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Align(
              alignment: Alignment.centerLeft,
              //section name
              child:  Text(
                  sectionId == 1 ? 'Sekcja Aplikacji Desktopowych Mobilnych i Webowych' :
                  sectionId == 2 ? 'Sekcja Game-Dev' :
                  'Sekcja Elektroniki i Retro',
                  style: GoogleFonts.alegreyaSansSC(
                    fontSize: 20,
                    textStyle: TextStyle(color:
                    sectionId == 1 ? green :
                    sectionId == 2 ? magenta :
                    blue),
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          //icon
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(sectionId == 1 ? Icons.devices : sectionId == 2 ? Icons.videogame_asset : Icons.memory,
                  color:
                  sectionId == 1 ? green :
                  sectionId == 2 ? magenta :
                  blue,
                  size: 40),
            ),
          ),
        ],
      ),
      //bottom border
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 2, color:
              sectionId == 1 ? green :
              sectionId == 2 ? magenta :
              blue)
          )
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

    paint.color = Color.fromRGBO(54, 54, 54, 1);
    paint.style = PaintingStyle.fill;

    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height *0.15);
    path.lineTo(0, size.height *0.7);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}