import 'package:flutter/material.dart';
import 'sarapan.dart';
import 'malamHari.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _shapeColor = Colors.grey[200]!;
  Color _fontColor = Color.fromARGB(255, 156, 188, 89);
  Color _shapeColor2 = Colors.grey[200]!;
  Color _fontColor2 = Color.fromARGB(255, 156, 188, 89);
  int x = 0;
  Widget _menu = Center(
    child: Text(
      'Silakan pilih kategori menu', style: TextStyle(
        fontSize: 18
      ),
    )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Warung Empat Putra', style: TextStyle(fontSize: 30, fontFamily: 'Staat'),),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0,2),
                    blurRadius: 5
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0,1),
                            blurRadius: 5
                          )
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: _shapeColor,
                      ),
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Menu Sarapan',
                        textAlign: TextAlign.center,
                         style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: _fontColor)
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        _shapeColor = Theme.of(context).primaryColor;
                        _fontColor = Colors.white;
                        if (x == 0){
                          _shapeColor2 = Colors.grey[200]!;
                          _fontColor2 = Color.fromARGB(255, 156, 188, 89);
                          _menu = Sarapan();
                        }
                      });
                    },
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0,1),
                            blurRadius: 5
                          )
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: _shapeColor2,
                      ),
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Menu Malam Hari',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: _fontColor2)
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        _shapeColor2 = Theme.of(context).primaryColor;
                        _fontColor2 = Colors.white;
                        int x = 1;
                        if (x == 1){
                          _shapeColor = Colors.grey[200]!;
                          _fontColor = Color.fromARGB(255, 156, 188, 89);
                          _menu = MalamHari();
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: _menu,
          )
        ],
      )
    );
  }
}