import 'package:flutter/material.dart';

import 'colors.dart';

class GaleriaPage extends StatefulWidget {
  GaleriaPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GaleriaPage createState() => _GaleriaPage();
}

class _GaleriaPage extends State<GaleriaPage>{

  void main()
  {
    print(1);
  }

  List obrazy = [
    "https://i1.jbzd.com.pl/contents/2020/09/normal/WZ08NMcePTJwIyAHbxAc45wGcVbvV0pB.jpg",
    "https://i1.jbzd.com.pl/contents/2020/09/normal/XihDp1nvmSHsBjbpE1FzDSW3zW5GWspO.jpg"
  ];
  double width = 0.29;

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
                child: Padding(
                  padding: EdgeInsets.all(7),
                  child: ListView(
                    padding: EdgeInsets.all(0),
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: obrazy.map((item) {
                                var index = obrazy.indexOf(item);
                                if(index%3 == 0) {
                                  return ImageTile(
                                      MediaQuery.of(context).size.width * width,
                                      index%9 == 0 ? 1.51 : index%9 == 6 ? 1.32 : 1,
                                      index%15 == 3 ? magenta :
                                      index%15 == 6 ? blue :
                                      index%15 == 9 ? green :
                                      index%15 == 12 ? yellow :
                                      red,
                                      item
                                  );
                                }else{
                                  return Container();
                                }
                              }).toList()

                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                              children: obrazy.map((item) {
                                var index = obrazy.indexOf(item);
                                if(index%3 == 2) {
                                  return ImageTile(
                                      MediaQuery.of(context).size.width * width,
                                      index%9 == 2 ? 1 : index%9 == 5 ? 1.51 : 1.32,
                                      index%15 == 2 ? green :
                                      index%15 == 5 ? yellow :
                                      index%15 == 8 ? red :
                                      index%15 == 11 ? magenta :
                                      blue,
                                      item
                                  );
                                }else{
                                  return Container();
                                }
                              }).toList()
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: obrazy.map((item) {
                                var index = obrazy.indexOf(item);
                                if(index%3 == 1) {
                                  return ImageTile(
                                      MediaQuery.of(context).size.width * width,
                                      index%9 == 1 ? 1.32 : index%9 == 4 ? 1 : 1.51,
                                      index%15 == 1 ? magenta :
                                      index%15 == 4 ? blue :
                                      index%15 == 7 ? green :
                                      index%15 == 10 ? yellow :
                                      red,
                                      item
                                  );
                                }else{
                                  return Container();
                                }
                              }).toList()
                          )
                        ],
                      ),
                    ],
                  )
                )
              )],
          )
        ],
      ),
    );
  }
}

class ImageTile extends StatelessWidget{

  double szerokosc;
  double wysokoscStosunek;
  Color color;
  String url;

  ImageTile(this.szerokosc ,this.wysokoscStosunek, this.color, this.url);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: GestureDetector(
         child: Hero(
           tag: url.split('/').removeLast(),
           child: Container(
             width: szerokosc,
             height: szerokosc * wysokoscStosunek,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 border: Border.all(
                     color: color,
                     width: 3
                 ),
                 image: DecorationImage(
                   image: NetworkImage(url),
                   fit: BoxFit.cover,
                 )
             ),
           ),
         ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return HeroPage(url);
          }));
        },
      )
    );
  }
}

class HeroPage extends StatelessWidget{

  String url;

  HeroPage(this.url);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 28, 28, 1),
      body: Column(
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
          Center(
            child: Hero(
              tag: this.url.split('/').removeLast(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.85,
                child: Image.network(this.url),
              ),
            ),
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