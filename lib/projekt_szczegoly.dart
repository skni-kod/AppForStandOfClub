import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'colors.dart';
import 'projekt.dart';

class ProjektPage extends StatefulWidget {
  final String title;
  final Projekt projekt;

  ProjektPage({Key key, this.title, this.projekt}) : super(key: key);

  @override
  _ProjektPageState createState() => _ProjektPageState(projekt);
}

class _ProjektPageState extends State<ProjektPage>{

  _ProjektPageState(this.projekt);

  final Projekt projekt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlack,
      body: Stack(
        children: <Widget>[
          Rectangle(),
          Column(
            children: <Widget>[
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
                child: ListView(
                  padding: EdgeInsets.all(0),
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                            children: [
                              Text("${this.projekt.title}", style: GoogleFonts.alegreyaSansSC(
                                  fontSize: 22,
                                  textStyle: TextStyle(color: Colors.white),
                                  fontWeight: FontWeight.bold
                              )),
                              MarkdownBody(
                                data: this.projekt.text,styleSheet: MarkdownStyleSheet(
                                p: GoogleFonts.alegreyaSansSC(
                                    fontSize: 17,
                                    textStyle: TextStyle(color: Colors.white),
                                ),
                                h3: GoogleFonts.alegreyaSansSC(
                                  fontSize: 18,
                                  textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                                listBullet: TextStyle(
                                  color:
                                  this.projekt.section.id == 1 ? green :
                                  this.projekt.section.id == 2 ? magenta :
                                  blue,
                                )
                              ),)
                            ]
                        )
                    )
                  ],
                ),
              )
            ],
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

    path.moveTo(size.width, size.height*0.35);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height*0.8);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}