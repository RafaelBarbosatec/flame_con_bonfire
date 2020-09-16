import 'package:bonfire/bonfire.dart';
import 'package:flamecon/knight.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FlameConGame(),
    );
  }
}

final tileSize = 34.0;

class FlameConGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      joystick: Joystick(
        directional: JoystickDirectional(),
      ),
      player: Knight(Position(
        tileSize * 6,
        tileSize * 6,
      )),
//      lightingColorGame: Colors.black.withOpacity(0.5),
      map: TiledWorldMap(
        'map/my_map.json',
        forceTileSize: Size(tileSize, tileSize),
      ),
    );
  }
}
