import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Detail extends StatefulWidget {
  String nama;
  String gambar;
  String deskripsi;
  String harga;
  String waktu;

  Detail({
    required this.nama,
    required this.gambar,
    required this.deskripsi,
    required this.harga,
    required this.waktu
  });

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    String nama = widget.nama;
    String gambar = widget.gambar;
    String deskripsi = widget.deskripsi;
    String harga = widget.harga;
    String waktu = widget.deskripsi;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child : Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Image.asset(widget.gambar, height: 500,),
                  ),
                  Positioned(
                    top: 15,
                    left: 15,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black26
                          ),
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.arrow_back_ios_new_rounded, size: 30, color: Colors.white,)
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 15,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: (){
                          ratingDialog(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black26
                          ),
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.star_rounded, size: 30, color: Colors.white,)
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.only(top: 15, bottom: 35, left: 25, right: 25),
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.black54,
                    blurRadius: 5,
                    offset: Offset(1,0),
                  )],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Text(
                        widget.nama, style: TextStyle(fontSize: 26, color: Colors.black54, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )
                    ),
                    Flexible(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(child: Text('Rp',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),)),
                                Flexible(child: Text(widget.harga, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black54),))
                              ],
                            ),
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(child: Icon(Icons.timer_sharp, size: 34, color: Theme.of(context).primaryColor,)),
                                Flexible(child: Text(widget.waktu, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black54),))
                              ],
                            ),
                          ),
                          Flexible(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Flexible(child: Icon(Icons.star_rounded, size: 30, color: Theme.of(context).primaryColor,)),
                                    Flexible(child: Icon(Icons.star_rounded, size: 30, color: Theme.of(context).primaryColor,)),
                                    Flexible(child: Icon(Icons.star_rounded, size: 30, color: Theme.of(context).primaryColor,)),
                                    Flexible(child: Icon(Icons.star_rounded, size: 30, color: Theme.of(context).primaryColor,)),
                                    Flexible(child: Icon(Icons.star_half_rounded, size: 30, color: Theme.of(context).primaryColor,)),
                                    ],
                                  ),
                                ),
                                Flexible(child: Text('145 ulasan', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black54),))
                              ],
                            )
                          ),
                        ],
                      )
                    ),
                    Expanded(
                      flex: 4,
                      child: Text(
                        widget.deskripsi,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      boxShadow: [BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 5,
                                        offset: Offset(1,0),
                                      )],
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: FavButton(),
                                  )
                                ),
                                Flexible(child: SizedBox()),
                                Expanded(
                                  flex: 6,
                                  child: InkWell(
                                    onTap: (){
                                      _launchURL('https://gofood.link/a/C2XABtE');
                                    },
                                    child: Container(
                                      height: 60,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        boxShadow: [BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 5,
                                          offset: Offset(1,0),
                                        )],
                                        color: Theme.of(context).primaryColor,
                                        borderRadius: BorderRadius.circular(30)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Flexible(
                                            flex: 0,
                                            child: Icon(Icons.shopping_cart_outlined, size: 30, color: Colors.white)),
                                          Flexible(child: Text('Pesan di GoFood', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)))
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    )
                  ]
                ),
              ),
            )
          ],
        )
      ),
    );
  }
  void _launchURL(String _url) async {
  if (!await launch(_url)) throw 'Could not launch $_url';
  }

  ratingDialog(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return Dialog(
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Rating()
        );
      }
    );
  }
}

class FavButton extends StatefulWidget {

  @override
  State<FavButton> createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  int x = 0;
  Icon favIcon = Icon(Icons.favorite_border_outlined, size: 30,);
  Color favColor = Colors.black54;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      alignment: Alignment.center,
      icon: favIcon,
      color: favColor,
      onPressed: (){
        if(x == 0){
          setState(() {
            favIcon = Icon(Icons.favorite, size: 30,);
            favColor = Theme.of(context).primaryColor;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                elevation: 10,
                backgroundColor: Theme.of(context).primaryColor,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                duration: Duration(seconds: 1),
                content: Text('Anda menambahkan produk ini ke favorit',style: TextStyle(
                  fontFamily: 'Noto',
                  color: Colors.white
                ),),
              )
            );
            x = 1;
          });
        }
        else{
          setState(() {
            favIcon = Icon(Icons.favorite_border_outlined, size: 30,);
            favColor = Colors.black54;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                elevation: 10,
                backgroundColor: Theme.of(context).primaryColor,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                duration: Duration(seconds: 1),
                content: Text('Anda membatalkan favorit', style: TextStyle(
                  fontFamily: 'Noto',
                  color: Colors.white
                ),),
              )
            );
            x = 0;
          });
        }
      },
    );
  }
}

class Rating extends StatefulWidget {
  const Rating({ Key? key }) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  var _ratingController = PageController();
  late String nama;
  late String email;
  late String ulasan;
  var rating = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * 0.6,
            child: PageView(
              controller: _ratingController,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            flex: 0,
                            child: Text('Data Diri', style: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold))),
                          TextField(
                            cursorColor: Theme.of(context).primaryColor,
                            decoration: InputDecoration(
                              hintText: 'Ketikkan nama anda',
                              labelText: 'Nama',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Theme.of(context).primaryColor)
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Theme.of(context).primaryColor)
                              ),
                              floatingLabelStyle: TextStyle(color: Theme.of(context).primaryColor),
                            ),
                            onChanged: (String value){
                              nama = value;
                            },
                          ),
                          TextField(
                            cursorColor: Theme.of(context).primaryColor,
                            decoration: InputDecoration(
                              hintText: 'Ketikkan email anda',
                              labelText: 'Email',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Theme.of(context).primaryColor)
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Theme.of(context).primaryColor)
                              ),
                              floatingLabelStyle: TextStyle(color: Theme.of(context).primaryColor),
                            ),
                            onChanged: (String value){
                              email = value;
                            },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,                        
                        children: [
                          Text('Ulasan',style: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: 
                              List.generate(
                                5, (index) => IconButton(
                                  splashRadius: 1,
                                  icon: index < rating ? 
                                  Icon(
                                    Icons.star_rounded, 
                                    size: 40,
                                    color: Theme.of(context).primaryColor,
                                  )
                                  : 
                                  Icon(
                                    Icons.star_outline_rounded,
                                    size: 40,
                                    color: Colors.black54,
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      rating = index + 1;
                                  });
                                },
                              ),
                            )
                          ),
                          TextField(
                            cursorColor: Theme.of(context).primaryColor,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Theme.of(context).primaryColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Theme.of(context).primaryColor)
                              ),
                              floatingLabelStyle: TextStyle(color: Theme.of(context).primaryColor),
                              hintText: 'Beri ulasan',
                              labelText: 'Ulasan',
                            ),
                            onChanged: (String value){
                              ulasan = value;
                            },
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: MaterialButton(
                              textColor: Colors.white,
                              color: Theme.of(context).primaryColor,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                              onPressed: () {
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    elevation: 10,
                                    backgroundColor: Theme.of(context).primaryColor,
                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                    duration: Duration(seconds: 1),
                                    content: Text('Terima Kasih telah memberi ulasan',style: TextStyle(
                                      fontFamily: 'Noto',
                                      color: Colors.white
                                    ),
                                    ),
                                  )
                                );
                              },
                              child: Text('Kirim', style: TextStyle(fontSize: 14)),
                            ),
                          ),
                           Flexible(
                             child: MaterialButton(
                              child: Text('Lewati', style: TextStyle(color: Colors.black54)),
                              onPressed: (){
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]
    );
  }
}