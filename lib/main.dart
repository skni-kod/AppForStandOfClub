import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

import 'czlonkowie.dart';
import 'sekcje_i_projekty.dart';
import 'osiagniecia.dart';
import 'galeria.dart';
import 'colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlack,
      body: Stack(
        children: <Widget>[
          Rectangle(),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(30, 40, 30, 30),
                child: Image(
                  image: AssetImage("assets/images/skniKOD.png"),
              )
              ),
              new Flexible(
                  child: GridView.count(
                      physics: new NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      padding: EdgeInsets.all(10.0),
                      children: <Widget>[
                        Button(
                          green,
                          Color.fromRGBO(87, 185, 11, 1),
                          Icon(Icons.apps),
                          "Sekcje i projekty",
                          SekcjeIProjektyPage()
                        ),
                        Button(
                          blue,
                          Color.fromRGBO(0, 92, 177, 1),
                          Icon(Icons.group),
                            "Członkowie",
                          CzlonkowiePage()
                        ),
                        Button(
                          red,
                          Color.fromRGBO(178, 39, 20, 1),
                          Icon(Icons.grade),
                            "Osiągnięcia",
                          OsiagnieciaPage()
                        ),
                        Button(
                          magenta,
                          Color.fromRGBO(169, 22, 145, 1),
                          Icon(Icons.image),
                            "Galeria",
                          GaleriaPage()
                        ),
                      ],))
            ],
          )
        ],
      ),
    );
  }
}
class Button extends StatelessWidget
{
  double roundedCorners = 30;
  Color color = grey;
  Color underColor = grey;
  Icon icon = new Icon(Icons.apps);
  String opis = "";

  var klasa;

  Button(this.color, this.underColor, this.icon, this.opis, this.klasa);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: EdgeInsets.all(5),
          child: GestureDetector(
            onTap: ()
            {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => klasa));
            },
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 15, 15, 5),
                  child: Center(
                    child: ClipRRect(
                        borderRadius: new BorderRadius.circular(roundedCorners),
                        child: Square(underColor)
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 5, 15),
                  child: Center(
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                              borderRadius: new BorderRadius.circular(roundedCorners),
                              child: Square(color)
                          ),
                          Center(
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(icon.icon, color: Colors.white, size: 100.0,),
                                Text(opis,
                                    style: GoogleFonts.alegreyaSansSC(
                                        fontSize: 22,
                                        textStyle: TextStyle(color: Colors.white)
                                    ))
                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                )
              ],
            ),
          )
,)
    );
  }
}
class Square extends StatelessWidget{
  Color color = grey;
  Square(this.color);
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(),
      painter: SquarePainter(color),
    );
  }
}

class SquarePainter extends CustomPainter {
  Color color = Colors.white;
  SquarePainter(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = color;
    canvas.drawRect(new Rect.fromLTRB( 0, 0, size.width, size.height ), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
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

    path.moveTo(size.width, size.height * 0.3);
    path.lineTo(0, size.height*0.85);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
      return oldDelegate != this;
    }
}