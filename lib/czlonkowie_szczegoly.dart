import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'czlonek.dart';

class CzlonkowieSzczegolyPage extends StatefulWidget {
  CzlonkowieSzczegolyPage({Key key, this.title, this.member}) : super(key: key);
  MemberApi member;
  final String title;

  @override
  _CzlonkowiePageState createState() => _CzlonkowiePageState(member);
}

class _CzlonkowiePageState extends State<CzlonkowieSzczegolyPage>{
  MemberApi member;
  _CzlonkowiePageState(this.member);

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
                    //back to member list
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
                //user details
                child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10),
                            child:  Container(
                            width: MediaQuery.of(context).size.width*0.4, //width and height must be the same to widget looks like square
                            height: MediaQuery.of(context).size.width*0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Color.fromRGBO(116, 116, 116, 1),
                                  width: 3),
                                image: DecorationImage(
                                    image: NetworkImage(member.avatar), //image from internet
                                    fit: BoxFit.cover,)
                              ),
                            )
                          ),
                          //name and surname
                          Text('${member.user.first_name} ${member.user.last_name}', style: GoogleFonts.alegreyaSansSC(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            textStyle: TextStyle(color: Colors.white)
                          ),
                          ),
                          //nickname
                          Text(member.user.username, style: GoogleFonts.alegreyaSans(
                              fontSize: 20,
                              textStyle: TextStyle(color: Colors.white)
                          ),
                          ),
                          //details
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: <Widget>[
                                //email
                                Element(Icon(Icons.mail),magenta, member.user.email == null ? 'Brak danych' : member.user.email),
                                //description
                                Element(Icon(Icons.contacts),green, member.description == null ? 'Brak danych' : member.description),
//                                Element(Icon(Icons.location_on),red,snapshot.data.location == null ? 'Brak danych' : snapshot.data.location),
//                                Element(Icon(Icons.people),blue,snapshot.data.company == null ? 'Brak danych' : snapshot.data.company),
//                                Element(Icon(Icons.language),yellow,snapshot.data.blog == "" ? 'Brak danych' : snapshot.data.blog),
                              ],
                            ),
                          )
                        ]
                      )


              )],
          )
        ],
      ),
    );
  }
}

//element od user description
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
        //icon
        Padding(
          padding: EdgeInsets.fromLTRB(0, 4, 5, 7),
          child: Icon(icon.icon, color: color, size: 30)),
        //info
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