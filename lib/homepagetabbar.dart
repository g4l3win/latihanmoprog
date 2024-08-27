import 'package:flutter/material.dart';
import './hal_komputer.dart' as Komputer;
import './hal_radio.dart' as Radio;
import './hal_headset.dart' as Headset;
import './hal_smartphone.dart' as HP;
void main() {
  runApp(new MaterialApp(
    title: "aplikasi winni Tab bar",
    home: new Home(),
  ));
}
//shortcut stfu
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late TabController controller;
  //shortcut initstate
  @override
  void initState() {
    controller = new TabController(length: 4, vsync: this); //4 artinya ada 4 tab
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: new Text("Daftar elektroknik"),
        bottom: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.computer),text: "Komputer",),
              new Tab(
                icon: new Icon(Icons.headset), text: "Headset",),
              new Tab(
                icon: new Icon(Icons.radio), text: "Radio"),
              new Tab(
                icon: new Icon(Icons.smartphone), text: "Smartphone",),

            ],)
      ),
      
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new Komputer.Komputer(),
            new Headset.Headset(),
            new Radio.Radio(),
            new HP.SmartPhone(),
          ]
      ),

        bottomNavigationBar: new Material(
          color: Colors.amber,
          child: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.computer),),
              new Tab(
                icon: new Icon(Icons.headset),),
              new Tab(
                  icon: new Icon(Icons.radio),),
              new Tab(
                icon: new Icon(Icons.smartphone),),

            ],),
        )
    );
  }
}
