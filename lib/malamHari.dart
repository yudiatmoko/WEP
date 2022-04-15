import 'package:flutter/material.dart';
import 'package:project/detail.dart';
import 'package:project/detail1.dart';
import 'data.dart';

class MalamHari extends StatefulWidget {

  @override
  State<MalamHari> createState() => _MalamHariState();
}

class _MalamHariState extends State<MalamHari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView.builder(
        itemCount: malamHari.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              elevation: 8,
              color: Theme.of(context).primaryColor,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                    child: ClipRRect(
                      child: Image.asset(malamHari[index].gambar),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Detail(
                          nama: malamHari[index].nama,
                          gambar: malamHari[index].gambar,
                          deskripsi: malamHari[index].deskripsi,
                          waktu: malamHari[index].waktu,
                          harga: malamHari[index].harga,
                        )
                      )
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.black12,
                            Colors.black26,
                            Colors.black38,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            malamHari[index].nama,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down_rounded, size: 45, color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}

