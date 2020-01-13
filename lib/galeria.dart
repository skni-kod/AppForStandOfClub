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
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/80878755_3147519701941498_8493121051281063936_o.png?_nc_cat=107&_nc_ohc=cebp3cVdQIIAX_vMm8H&_nc_ht=scontent-waw1-1.xx&oh=04fefaa38654e815ee432349bab39f5a&oe=5E9A13DE",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/71807923_2961522710541199_1161680446161944576_o.jpg?_nc_cat=103&_nc_ohc=21Hn5lN2zIcAX89PYZ4&_nc_ht=scontent-waw1-1.xx&oh=959ce45137b0e7962b70961adfff0406&oe=5EA0CEB2",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/61359673_2709015759125230_7369634933238661120_o.jpg?_nc_cat=100&_nc_ohc=rdjIh3anAZcAX8Y8Pjt&_nc_ht=scontent-waw1-1.xx&oh=ef986ad1a3e1da4f8811dad440670947&oe=5EAAC8C9",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/74612380_3078732895486846_1935275129290358784_o.jpg?_nc_cat=102&_nc_ohc=YzoRePN__RMAX_BDa6Q&_nc_ht=scontent-waw1-1.xx&oh=b22f882a8cdae18b3998b8cbc0e78915&oe=5E93EF89",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/61555416_2709015729125233_123596651834114048_o.jpg?_nc_cat=105&_nc_ohc=vBIl0iCMmkgAX8FpiTF&_nc_ht=scontent-waw1-1.xx&oh=9e15e7bdc887159a2a156c72f98d91b4&oe=5E9CE210",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/60970527_2703561759670630_6220402242898362368_n.png?_nc_cat=106&_nc_ohc=erpLXkoT3XQAX9I5VP9&_nc_ht=scontent-waw1-1.xx&oh=1b1625a41f3d208f5c2bf0f9b2d1c1e0&oe=5ED82753",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/60939144_2703510703009069_3794336974446264320_o.jpg?_nc_cat=108&_nc_ohc=DV9HfwcGd0gAX8UHOB_&_nc_ht=scontent-waw1-1.xx&oh=7e36cf2854b64b6664d6833e19c7e02c&oe=5E9BB257",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/55502506_2598852220141585_1597066409148416000_o.jpg?_nc_cat=101&_nc_ohc=iukQh7kew5YAX_a_EGe&_nc_ht=scontent-waw1-1.xx&oh=2dc37c366629fd1411673524957604dd&oe=5EA09D15",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/52427878_2543544872338987_1035186521059098624_o.jpg?_nc_cat=101&_nc_ohc=Bf_dIXMSUdkAX_Pz3Wl&_nc_ht=scontent-waw1-1.xx&oh=f0be5497de14492cc4308daf1bef7bcc&oe=5EA14DB8",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/p720x720/49797549_2487859911240817_8580126604682854400_o.jpg?_nc_cat=103&_nc_ohc=N-2EuzdDtLYAX9iixiD&_nc_ht=scontent-waw1-1.xx&_nc_tp=1&oh=0ac8d5e8d379274d0ebf19ee2a90ee00&oe=5E8DF795",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/48405188_2457184327641709_3851054654699864064_n.png?_nc_cat=108&_nc_ohc=hTIfeIh5uCgAX9yF7d_&_nc_ht=scontent-waw1-1.xx&oh=89c0f64faad27cf5ac9c15b6d3f19683&oe=5EAD9D6C",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/47687727_2437258352967640_874647979338760192_o.jpg?_nc_cat=101&_nc_ohc=ZcxElxY12wUAX_aswVk&_nc_ht=scontent-waw1-1.xx&oh=a2d197c8f6d73b6fc4dcb93919880802&oe=5E9410CF",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/47378773_2427703640589778_7200365002178428928_o.jpg?_nc_cat=106&_nc_ohc=p3NiNFIj8UIAX8ysf2x&_nc_ht=scontent-waw1-1.xx&oh=fbfe7b81fd889f8974b073765dd123d7&oe=5EACC5E9",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/46488215_2411947378832071_8391883689952280576_n.jpg?_nc_cat=105&_nc_ohc=Bt_0MXOk-NQAX-jmhB1&_nc_ht=scontent-waw1-1.xx&oh=06b3e33147934fdb4c45591bd18debad&oe=5E9E5B04",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/44243126_2358485730844903_4801780944530833408_o.jpg?_nc_cat=103&_nc_ohc=urZdFcAJ7tkAX-OrGla&_nc_ht=scontent-waw1-1.xx&oh=dba3eb2b1a99d28e33b5dbcc7618c8e8&oe=5EA11265",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/35102804_2160660690627409_1456146951618691072_o.jpg?_nc_cat=100&_nc_ohc=C37Rrgdl3I8AX_CejZ0&_nc_ht=scontent-waw1-1.xx&oh=2598cb6ea0134e80383c6fcac48597df&oe=5E9B3DC0",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/35050658_2160660610627417_4839377640836038656_o.jpg?_nc_cat=101&_nc_ohc=qzoEKo8AyPkAX96L-z8&_nc_ht=scontent-waw1-1.xx&oh=32ee28c0de92b0463bdef8d235cf0f63&oe=5EA0B11A",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/s960x960/34087448_2150312348328910_232770369696563200_o.jpg?_nc_cat=105&_nc_ohc=_fwmYX4fA3wAX9JVajj&_nc_ht=scontent-waw1-1.xx&_nc_tp=1&oh=487f60bc1f549e55c58093b0293e63a5&oe=5E98DC4A",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t31.0-8/30167337_2094458503914295_5518858820752698395_o.jpg?_nc_cat=106&_nc_ohc=ksDJdneRaJcAX-iIXnc&_nc_ht=scontent-waw1-1.xx&oh=930616ecdaadc7a5d3d7f20ec0fc9285&oe=5EA1F468",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/34817673_2160660463960765_5473076988501557248_o.jpg?_nc_cat=100&_nc_ohc=czScF_A5zdkAX_3O_v4&_nc_ht=scontent-waw1-1.xx&oh=94767cb747a64bfa6b02928e5d1aa888&oe=5E961038",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t31.0-8/30052560_2094458467247632_4632247996860724615_o.jpg?_nc_cat=108&_nc_ohc=AFNp0Opld88AX_f857z&_nc_ht=scontent-waw1-1.xx&oh=2ac2ee69841cbf2e222aa2c1c1203a0c&oe=5ED7D0C7",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t31.0-8/30171114_2094458447247634_4134064650288454367_o.jpg?_nc_cat=107&_nc_ohc=80O-ezJkPfAAX-EfYl0&_nc_ht=scontent-waw1-1.xx&oh=2b8436ac57570854dd0154c51da1d2b0&oe=5E989A0E",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t31.0-8/25188801_1946813385345475_5844062110941190142_o.jpg?_nc_cat=107&_nc_ohc=iqPzskvwgLcAX_XlD2m&_nc_ht=scontent-waw1-1.xx&oh=8b6d15c1539b9cb35648b03b12469495&oe=5EA9339F",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t31.0-8/24831488_1941854769174670_5974364460962943459_o.jpg?_nc_cat=109&_nc_ohc=wUypM_fd8SsAX-wULPt&_nc_ht=scontent-waw1-1.xx&oh=fb47e66b75416be5ed268f343e3b4afa&oe=5E90DF06",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t31.0-8/24068530_1931459360214211_8574000586585103129_o.jpg?_nc_cat=104&_nc_ohc=H8AqrtGYaOoAX8N2L4f&_nc_ht=scontent-waw1-1.xx&oh=e8df1c12cb776bcc9dafe525104cdfb3&oe=5EA46DD0",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t31.0-8/24059424_1929307647096049_2627659589616204156_o.jpg?_nc_cat=107&_nc_ohc=ZsOoVtE-3GcAX8wIYX1&_nc_ht=scontent-waw1-1.xx&oh=2b28585b1bdd82042725734966d218e3&oe=5EA71398",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t31.0-8/17545260_1656022331091250_3032138399814760069_o.jpg?_nc_cat=109&_nc_ohc=gwCIV1CUaA8AX-CmB3h&_nc_ht=scontent-waw1-1.xx&oh=ed719973c3da674ea9a5905b4619bb30&oe=5E94FB42",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/11330043_1112601258766696_5241802325746526370_n.jpg?_nc_cat=103&_nc_ohc=EyEDMId1PwMAX8ud_Xn&_nc_ht=scontent-waw1-1.xx&oh=b0995d7c86f2ced932d9901f3c24484f&oe=5EA99A03",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t31.0-8/11060916_1074905642536258_8894239039652196180_o.jpg?_nc_cat=109&_nc_ohc=yaRFk8RRK_IAX_LXXHs&_nc_ht=scontent-waw1-1.xx&oh=0c94b6792561f980d3a922b7078416ac&oe=5EABB70D",
    "https://scontent-waw1-1.xx.fbcdn.net/v/t31.0-8/10863842_993656040661219_3408171405721652743_o.jpg?_nc_cat=107&_nc_ohc=o0iwuVInznwAX_qhKZV&_nc_ht=scontent-waw1-1.xx&oh=69387fd8b5c3f068666b0f4320b3dcf4&oe=5E9F6246",

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