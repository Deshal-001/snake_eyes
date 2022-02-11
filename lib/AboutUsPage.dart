import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snake_eyes/CommonSnakesPage.dart';
import 'package:snake_eyes/MenuPage.dart';
import 'package:google_fonts/google_fonts.dart';

class aboutUsPage extends StatelessWidget {
  const aboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: AppBar(backgroundColor: Colors.teal,),
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assest/leavesbackground.jpg'),
                    fit: BoxFit.cover)),
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: const Color(0xFF0C3823),
                  ),
                  margin: const EdgeInsets.fromLTRB(5, 20, 5, 20),
                  child: Column(children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "WE ARE ",
                      style: GoogleFonts.abel(color: Colors.white),
                    ),
                    Text(
                      "CYBER KNIGHTS",
                      style: GoogleFonts.bebasNeue(
                          fontSize: 50, color: Colors.white),
                    ),
                    const Icon(
                      FontAwesomeIcons.chessKnight,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ]),
                ),
                personalCard(
                  name: "H.Kavindu Deshal Silva",
                  path: 'assest/profilePictures/profile.jpg',
                  uowId: 'w1839723',
                  iitId: 20200969,
                  color: const Color(0xFF0C3823),
                ),
                personalCard(
                  name: "Dimuth Fernandofulle  ",
                  path: 'assest/profilePictures/profile.jpg',
                  uowId: 'w1839723',
                  iitId: 20200969,
                  color: const Color(0xFF0C3823),
                ),
                personalCard(
                  name: "G.Avishka Kavinda     ",
                  path: 'assest/profilePictures/profile.jpg',
                  uowId: 'w1839723',
                  iitId: 20200969,
                  color: const Color(0xFF0C3823),
                ),
                personalCard(
                  name: "K.Chanuthi Rajapaksha",
                  path: 'assest/profilePictures/profile.jpg',
                  uowId: 'w1839723',
                  iitId: 20200969,
                  color: const Color(0xFF0C3823),
                ),
                personalCard(
                  name: "Saumya Kumarasinghe",
                  path: 'assest/profilePictures/profile.jpg',
                  uowId: 'w1839723',
                  iitId: 20200969,
                  color: const Color(0xFF0C3823),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'Capture',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.database),
              label: 'Snakes',
            ),
          ],
          selectedItemColor: Colors.amber[800],
          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MenuPage();
                }));
                break;
              case 2:
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CommonSnakesPage();
                }));
                break;
            }
          },
        ),
      ),
    );
  }
}

class personalCard extends StatelessWidget {
  final String path;
  final String name;
  final String uowId;
  final int iitId;
  final Color color;

  personalCard(
      {required this.path,
      required this.name,
      required this.uowId,
      required this.iitId,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5, left: 5, bottom: 8, top: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.0),
        backgroundBlendMode: BlendMode.color,
        color: color,
      ),
      child: SingleChildScrollView(
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(18.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(path),
                maxRadius: 50,
                minRadius: 20,
              ),
            ),
            Expanded(
              flex: 20,
              // margin: EdgeInsets.fromLTRB(7, 10, 2, 10),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.oswald(fontSize: 25),
                  ),
                  Text(
                    "UOW ID : $uowId\nIIT ID : $iitId       ",
                    style:
                        GoogleFonts.sourceCodePro(fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "Software Engineering    ",
                    style:
                        GoogleFonts.sourceCodePro(fontWeight: FontWeight.w400),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
