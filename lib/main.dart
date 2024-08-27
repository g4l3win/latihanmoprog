import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "aplikasi winni Card dan parsing",
    home: new HalSatu(),
  ));
}

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Card & Parsing"),
          backgroundColor: Colors.blue,
        ),
        body: new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new CardSaya(
                    icon: Icons.home,
                    teks: "Home",
                    warnaIcon: Colors.brown,
                  ),
                  new CardSaya(
                    icon: Icons.favorite,
                    teks: "Favorite",
                    warnaIcon: Colors.pink,
                  ),
                  new CardSaya(
                    icon: Icons.place,
                    teks: "Place",
                    warnaIcon: Colors.blue,
                  ),
                  new CardSaya(
                    icon: Icons.settings,
                    teks: "Settings",
                    warnaIcon: Colors.black,
                  ),
                ])));
  }
}

//parsing
class CardSaya extends StatelessWidget {
  //deklarasi variabel
  CardSaya({required this.icon, required this.teks, required this.warnaIcon});
  final IconData icon;
  final String teks;
  final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Card(
            child: new Column(children: <Widget>[
      new Icon(
        icon,
        size: 50.0,
        color: warnaIcon,
      ),
      new Text(
        teks,
        style: TextStyle(fontSize: 20.0),
      )
    ])));
  }
}
