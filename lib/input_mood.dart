import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:input_mood/my_clipper.dart';

class InputMood extends StatefulWidget {
  const InputMood({Key? key}) : super(key: key);

  @override
  State<InputMood> createState() => _InputMoodState();
}

class _InputMoodState extends State<InputMood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            // listview
            ListView(children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // input mood
                  ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      child: Stack(
                        children: <Widget>[
                          // backgound
                          Container(
                            height: 250,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: <Color>[
                                    Color.fromARGB(255, 42, 44, 106),
                                    Color.fromARGB(255, 99, 99, 164),
                                  ]
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(20.0),
                            child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white,),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.all(20.0),
                                  child: Text(
                                    "Kamis, 23 Maret 2023",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Text(
                                    "Bagaimana hari Anda?",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.grey,
                                        ),
                                        // child: ,
                                      ),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // kegiatan
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Kegiatan",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Pilih semua kegiatan yang kamu lakukan hari ini",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, bottom: 5),
                          height: 80,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                width: 70,
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(width: 1.0, color: Color.fromARGB(255, 192, 192, 192)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // interaksi sosial
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Interaksi Sosial",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Dengan siapa kamu berinteraksi hari ini",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, bottom: 5),
                          height: 80,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                width: 70,
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(width: 1.0, color: Color.fromARGB(255, 192, 192, 192)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // deskripsi
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Deskripsi",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Tambahkan deskripsi tentang bagaimana harimu",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // foto
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 75),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Foto",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Simpan gambar yang mendeskripsikan harimu",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                          child: DottedBorder(
                            color: Color.fromARGB(255, 59, 60, 128),
                            borderType: BorderType.RRect,
                            radius: Radius.circular(10),
                            padding: EdgeInsets.all(6),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                              child: Container(
                                height: 100,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.all(3),
                                        child: Icon(
                                          Icons.add_a_photo_outlined,
                                          color: Color.fromARGB(255, 59, 60, 128), size: 35,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(3),
                                        child: Text(
                                          "Upload foto anda",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 59, 60, 128),
                                            fontSize: 12.0,
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // tombol submit
                ],
              ),
            ],),
            // button di tengah bawah
            Container(
              margin: EdgeInsets.fromLTRB(25, 20, 25, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 59, 60, 128),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: (){},
                        child: Center(
                          child: Text(
                            "Submit",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
