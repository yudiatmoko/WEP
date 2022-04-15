import 'package:flutter/material.dart';
import 'package:project/home.dart';
import 'home.dart';

class Cover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).primaryColor,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          if (constraints.maxWidth > 600){
            return CoverWeb();
          } else{
            return CoverMobile();
          }
        }
      ),
    );
  }
}

class CoverMobile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        height: _height,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Container(
                child: Text(
                  'Warung Empat Putra',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 44,
                    fontFamily: 'Staat',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 30, left: 10),
                      child: CircleAvatar(
                          backgroundColor: Color.fromARGB(170, 170, 200, 105),
                          radius: 70,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 120, right: 10),
                      child: CircleAvatar(
                          backgroundColor: Color.fromARGB(170, 170, 200, 105),
                          radius: 110,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 300, left: 30),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(170, 170, 200, 105),
                        radius: 30,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 280, left: 30),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(170, 170, 200, 105),
                        radius: 10,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 350, right: 30),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(170, 170, 200, 105),
                        radius: 20,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(left: 20),
                      child: Image.asset(
                        'asset/img/chef1.png',
                        height: 420,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 25,
                      right: 25,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 210,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              offset: Offset(0,1),
                              blurRadius: 5,
                            )
                          ]
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Hallo!', 
                                style: TextStyle(fontSize: 22, fontFamily: 'Noto', fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Text('Warung Empat Putra menyediakan 2 macam kategori menu lho..\nAda kategori Sarapan dan Malam Hari. Penasaran? Yuk cek!',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontFamily: 'Noto'),),
                              SizedBox(height: 8),
                              InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => Home(),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    padding: EdgeInsets.all(6),
                                    color: Theme.of(context).primaryColor,
                                    child: Text('Cek Menu', style: TextStyle(fontFamily: 'Noto',color: Colors.white),)
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CoverWeb extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}