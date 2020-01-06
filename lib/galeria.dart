import 'package:flutter/material.dart';

class GaleriaPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 28, 28, 1),
      body: Stack(
        children: <Widget>[
          Rectangle(),
          Text("Galeria")
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