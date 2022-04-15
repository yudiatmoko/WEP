import 'package:flutter/material.dart';
import 'package:project/detail.dart';
import 'data.dart';

class Sarapan extends StatefulWidget {

  @override
  State<Sarapan> createState() => _SarapanState();
}

class _SarapanState extends State<Sarapan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView.builder(
        itemCount: sarapan.length,
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
                      child: Image.asset(sarapan[index].gambar),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Detail(
                          nama: sarapan[index].nama,
                          gambar: sarapan[index].gambar,
                          deskripsi: sarapan[index].deskripsi,
                          waktu: sarapan[index].waktu,
                          harga: sarapan[index].harga,
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
                            sarapan[index].nama,
                            maxLines: 2,
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