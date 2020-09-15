import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'dart:convert';

import 'colors.dart';
import 'czlonek.dart';

class CzlonkowieSzczegolyPage extends StatefulWidget {
  CzlonkowieSzczegolyPage({Key key, this.title, this.url}) : super(key: key);
  String url = "";
  final String title;

  @override
  _CzlonkowiePageState createState() => _CzlonkowiePageState(url);
}

class _CzlonkowiePageState extends State<CzlonkowieSzczegolyPage>{
  String url = "";
  _CzlonkowiePageState(this.url);

  Future<MemberGithub> fetchMembers() async {
    final response = await http.get(url);

    if(response.statusCode == 200){
      return MemberGithub.fromJson(jsonDecode(response.body));
    } else{
      throw Exception("Nie udało się pobrać");
    }
  }

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
                child: FutureBuilder<MemberGithub>(
                  future: fetchMembers(),
                  builder: (context, snapshot) {
                    if(snapshot.hasData){
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10),
                            child:  Container(
                            width: MediaQuery.of(context).size.width*0.4,
                            height: MediaQuery.of(context).size.width*0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Color.fromRGBO(116, 116, 116, 1),
                                  width: 3),
                                image: DecorationImage(
                                    image: NetworkImage(snapshot.data.avatar_url),
                                    fit: BoxFit.cover,)
                              ),
                            )
                          ),
                          Text(snapshot.data.name, style: GoogleFonts.alegreyaSansSC(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            textStyle: TextStyle(color: Colors.white)
                          ),
                          ),
                          Text(snapshot.data.login, style: GoogleFonts.alegreyaSans(
                              fontSize: 20,
                              textStyle: TextStyle(color: Colors.white)
                          ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: <Widget>[
                                Element(Icon(Icons.mail),magenta,snapshot.data.email == null ? 'Brak danych' : snapshot.data.email),
                                Element(Icon(Icons.contacts),green,snapshot.data.bio == null ? 'Brak danych' : snapshot.data.bio),
                                Element(Icon(Icons.location_on),red,snapshot.data.location == null ? 'Brak danych' : snapshot.data.location),
                                Element(Icon(Icons.people),blue,snapshot.data.company == null ? 'Brak danych' : snapshot.data.company),
                                Element(Icon(Icons.language),yellow,snapshot.data.blog == "" ? 'Brak danych' : snapshot.data.blog),
                              ],
                            ),
                          )
                        ]
                      );
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

class Element extends StatelessWidget
{
  Icon icon = new Icon(Icons.apps);
  Color color = magenta;
  String opis = "";

  Element(this.icon, this.color, this.opis);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(0, 4, 5, 7),
          child: Icon(icon.icon, color: color, size: 30)),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(3, 7, 0, 7),
            child: Text(opis,
              style: GoogleFonts.alegreyaSansSC(
                  fontSize: 20,
                  textStyle: TextStyle(
                      color: Colors.white
                  )
              ),),
          ),
        ),
      ],
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

    path.lineTo(size.width,0);
    path.lineTo(size.width, size.height*0.25);
    path.lineTo(0, size.height*0.7);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}