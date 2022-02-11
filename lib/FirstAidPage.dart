import 'package:flutter/material.dart';
import 'package:snake_eyes/AboutUsPage.dart';
import 'package:snake_eyes/FirstAidPage.dart';

import 'CommonSnakesPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'AboutUsPage.dart';
import 'MenuPage.dart';


class firstAidPage extends StatelessWidget {
  const firstAidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(child: Text("Kavindu"),),
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
}
