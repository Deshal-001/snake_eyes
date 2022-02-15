import 'package:flutter/material.dart';

import 'CommonSnakesPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'MenuPage.dart';

class firstAidPage extends StatelessWidget {
  const firstAidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text("First-Aid Guide"),
          centerTitle: true,
          backgroundColor: Color(0xFF0C3823),
        ),
        body: Container(
          child: ListView(
            children: [
              Column(
                //mainAxisAlignment: MainAxisAlignment,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: .5, color: Colors.black)),
                    margin: EdgeInsets.all(10),
                    child: Text(
                        "Any time a person has been bitten by a confirmed "
                        "or suspected poisonous snake, the injury should be"
                        " treated as a medical emergency. While awaiting "
                        "emergency medical care, there are first aid measures "
                        "that should be taken.",
                        style: GoogleFonts.mukta(fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF46AC46), width: 5),
                      ),
                      child: firstAid(
                        image: "assest/firstAid/do.png",
                        text: "",
                      )),
                  Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFE7550A), width: 5),
                      ),
                      child: firstAid(
                          image: "assest/firstAid/doNot.png", text: "")),
                  /* firstAid(image: "assest/firstAid/step3.jpg", text: "3:  Move away from the snake"),
                  firstAid(image: "assest/firstAid/step4.jpg", text: "4:  Remove clothing, jewelry, or constricting items."),
                  firstAid(image: "assest/firstAid/step5.jpg", text: "5:   Clean the wound as best as you can, but don’t flush it with water."),
                  firstAid(image: "assest/firstAid/step6.jpg", text: "6:  Immobilize and support the area of the bite."),
                  firstAid(image: "assest/firstAid/step7.jpg", text: "7:   Wait for, or go for, medical help."),
                  firstAid(image: "assest/firstAid/step8.jpg", text: "8:   Understand the medical care you should receive"),
                  firstAid(image: "assest/firstAid/step9.jpg", text: "9:   Stay calm and wait it out if you cannot reach medical care"),
                  firstAid(image: "assest/firstAid/step10.jpg", text: "10:   Stop the bleeding."),
                  firstAid(image: "assest/firstAid/step11.jpg", text: "11:  Clean the wound carefully."),
                  firstAid(image: "assest/firstAid/step12.jpg", text: "11:   Treat the wound with an antibiotic ointment and a bandage"),
*/
                ],
              ),

            ],
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
                  return MenuPage();
                }));
                break;
              case 2:
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CommonSnakesPage();
                }));
                break;
            }
          },
        ),
      ),
    );
  }
/*
  CarouselSlider buildCarouselSlider() {
    return CarouselSlider(
              options: CarouselOptions(height: 800.0),
              items: ['assest/homePageImage.jpeg', 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: const BoxDecoration(color: Colors.amber),
                        child: Image(
                          image: AssetImage(i.toString()),
                        ));
                  },
                );
              }).toList(),
            );
  }*/
}

class firstAid extends StatelessWidget {
  final String image;
  final String text;
  firstAid({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [commonText(text: text), Image(image: AssetImage(image))],
    );
  }
}

class commonText extends StatelessWidget {
  final String text;
  commonText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        textAlign: TextAlign.left,
        style:
            GoogleFonts.chakraPetch(fontSize: 20, fontWeight: FontWeight.w700),
      ),
    );
  }
}
