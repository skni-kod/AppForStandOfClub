import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
class OsiagnieciaPage extends StatelessWidget{

  List osiagniecia = [
    {'nazwa': 'Wygrana jakaś asdas da sda sdassd ', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3']},
    {'nazwa': 'Wygrana jakaś', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3']},
    {'nazwa': 'Wygrana jakaś', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3']},
    {'nazwa': 'Wygrana jakaś', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3','Osoba 1', 'Osoba 2', 'Osoba 3','Osoba 1', 'Osoba 2', 'Osoba 3']},
    {'nazwa': 'Wygrana jakaś', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3']},
    {'nazwa': 'Wygrana jakaś', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3']},
    {'nazwa': 'Wygrana jakaś asdas da sda sdassd ', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3']},
    {'nazwa': 'Wygrana jakaś', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3']},
    {'nazwa': 'Wygrana jakaś', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3']},
    {'nazwa': 'Wygrana jakaś', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3','Osoba 1', 'Osoba 2', 'Osoba 3','Osoba 1', 'Osoba 2', 'Osoba 3']},
    {'nazwa': 'Wygrana jakaś', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3']},
    {'nazwa': 'Wygrana jakaś', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3']},
    {'nazwa': 'Wygrana jakaś asdas da sda sdassd ', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3']},
    {'nazwa': 'Wygrana jakaś', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3']},
    {'nazwa': 'Wygrana jakaś', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3']},
    {'nazwa': 'Wygrana jakaś', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3','Osoba 1', 'Osoba 2', 'Osoba 3','Osoba 1', 'Osoba 2', 'Osoba 3']},
    {'nazwa': 'Wygrana jakaś', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3']},
    {'nazwa': 'Wygrana jakaś', 'data': '23.12.2019R', 'osoby': ['Osoba 1', 'Osoba 2', 'Osoba 3']},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 28, 28, 1),
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
                  ),
                ],
              ),
              Flexible(
                child: ListView(
                  padding: EdgeInsets.all(0),
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: osiagniecia.map((osiagniecie) {
                            return Container(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 8,
                                    child: Column(
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child:  Text(osiagniecie['nazwa'],style: GoogleFonts.alegreyaSansSC(
                                            fontSize: 22,
                                            textStyle: TextStyle(color:
                                            osiagniecia.indexOf(osiagniecie)%5 == 0 ? magenta :
                                            osiagniecia.indexOf(osiagniecie)%5 == 1 ? green :
                                            osiagniecia.indexOf(osiagniecie)%5 == 2 ? red :
                                            osiagniecia.indexOf(osiagniecie)%5 == 3 ? blue : yellow),
                                            fontWeight: FontWeight.bold,
                                          )),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(osiagniecie['osoby'].toString().replaceAll('[', '').replaceAll(']', ''), style: GoogleFonts.alegreyaSansSC(
                                            fontSize: 17,
                                            textStyle: TextStyle(color: Colors.white),
                                            fontWeight: FontWeight.w400,
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(osiagniecie['data'], style: GoogleFonts.alegreyaSansSC(
                                        fontSize: 17,
                                        textStyle: TextStyle(color: Colors.white),
                                        fontWeight: FontWeight.w300,
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(width: 2, color:
                                      osiagniecia.indexOf(osiagniecie)%5 == 0 ? magenta :
                                      osiagniecia.indexOf(osiagniecie)%5 == 1 ? green :
                                      osiagniecia.indexOf(osiagniecie)%5 == 2 ? red :
                                      osiagniecia.indexOf(osiagniecie)%5 == 3 ? blue : yellow)
                                  )
                              ),
                            );
                          } ).toList(),
                        ))
                  ],
                ),
              )
              ]
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

    paint.color = Color.fromRGBO(54, 54, 54, 1);
    paint.style = PaintingStyle.fill;

    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height*0.7);
    path.lineTo(size.width*0.3, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height*0.3);
    path.lineTo(size.width*0.7, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}