import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'MenuPage.dart';

List snakesList = [
  "Cobra",
  "Common Krait",
  "Hump Nosed PitViper",
  "Rat Snake",
  "Rusellas Viper",
  "Saw Scaled Viper",
  "Green Tree Vine",
  "Indian Rock Python",
  "Common Sand Boa"
];

List snakesImages = [
  "assest/snakes/cobra.jpeg",
  "assest/snakes/commonKrait.jpeg",
  "assest/snakes/humpNosedPitViper.jpeg",
  "assest/snakes/ratsnake.jpeg",
  "assest/snakes/rusellasViper.jpeg",
  "assest/snakes/sawScaledViper.jpeg",
  "assest/snakes/greentreeVine.jpeg",
  "assest/snakes/indianrockpython.jpeg",
  "assest/snakes/commonsandboa.jpeg"
];

class CommonSnakesPage extends StatefulWidget {
  const CommonSnakesPage({Key? key}) : super(key: key);

  @override
  _CommonSnakesPageState createState() => _CommonSnakesPageState();
}

class _CommonSnakesPageState extends State<CommonSnakesPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text("Common Snakes"),
          centerTitle: true,
          backgroundColor: Color(0xFF0C3823),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              snakes(
                  snakesList[0],
                  "",
                  snakesImages[0],
                  0.97,
                  "Naja Naja","Elapidae"),
              snakes(
                  snakesList[1],
                  "",
                  snakesImages[1],
                  0.9,
                  "Bungarus Caeruleus","Elapidae"),
              snakes(
                  snakesList[2],
                  "",
                  snakesImages[2],
                  0.9,
                  "Hypnale Hypnale","Viperidae"),
              snakes(
                  snakesList[3],
                  "",
                  snakesImages[3],
                  0.1,
                  "Aesculapian Snake","Colubridae"),
              snakes(
                  snakesList[4],
                  "",
                  snakesImages[4],
                  0.8,
                  "Daboia Russelii","Viperidae"),
              snakes(
                  snakesList[5],
                  "",
                  snakesImages[5],
                  0.8,
                  "Echis Carinatus","Viperidae"),
              snakes(
                  snakesList[6],
                  "",
                  snakesImages[6],
                  0.5,
                  "Ahaetulla Nasuta","Colubridae"),
              snakes(
                  snakesList[7],
                  "",
                  snakesImages[7],
                  0.1,
                  "Python Molurus","Pythonidae"),
              snakes(
                  snakesList[8],
                  "",
                  snakesImages[8],
                  0.1,
                  "Gongylophis Conicus","Boidae"),

              /**
                  1. cobra
                  2. commonKrait
                  3. humpNosedPitViper
                  4. rat snake
                  5. rusellasViper
                  6. sawScaledViper
                  7. green tree Vine
                  8. indian rock python
                  9. common sand boa  **/
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          backgroundColor: const Color(0xFF0C3823),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.camera,
                color: Colors.white,
              ),
              label: 'Capture',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.database,
                color: Colors.white,
              ),
              label: 'Snakes',
            ),
          ],
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.white,
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

class snakes extends StatelessWidget {
  late String name;
  String data;
  String path;
  double toxicLevel;
  String ScientificName;
  String family;

  snakes(this.name, this.data, this.path, this.toxicLevel, this.ScientificName,this.family);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: const Color(0xFF375b52 ),
        borderRadius: BorderRadius.circular(15),

      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 6,bottom: 5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      name,
                      style: GoogleFonts.breeSerif(fontSize: 25,color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Align(
                        child: Text(
                          "Toxicity Level :",style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                        alignment: Alignment.topLeft,
                      ),
                    ),
                    Expanded(
                      child: LinearPercentIndicator(
                        animation: true,
                        animationDuration: 2500,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        lineHeight: 14.0,
                        percent: toxicLevel,
                        backgroundColor: Colors.grey,
                        progressColor: Colors.red,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                            margin: EdgeInsets.only(left: 7),
                            child: Text("Scientific Name:",style: TextStyle(color: Colors.white),))),
                    Expanded(
                        flex: 2,
                        child: Text(
                          ScientificName,
                          style: GoogleFonts.abel(color: Colors.white),
                        ))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                            margin: EdgeInsets.only(left: 7),
                            child: Text("Family:",style: TextStyle(color: Colors.white),))),
                    Expanded(
                        flex: 2,
                        child: Text(
                          family,
                          style: GoogleFonts.abel(color: Colors.white),
                        ))
                  ],
                ),
                Container(
                    margin: const EdgeInsets.only(left: 6),
                    child:
                        Align(alignment: Alignment.center, child: Text(data))),
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.only(left: 8),
                      child: TextButton(
                        onPressed: () {
                          print("Tapped");
                        },
                        child: Text("See More..", style: TextStyle()),
                      ),
                    ))
              ],
            ),
            flex: 20,
          ),
          Container(
          margin: EdgeInsets.only(right: 6,top: 10,bottom: 10),
              width: 105,
              height: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10), // Image border
                child: SizedBox.fromSize(
                  size: Size.fromRadius(40), // Image radius
                  child: Image.asset(path, fit: BoxFit.cover),
                ),
              )),
        ],
      ),
    );
  }
}
