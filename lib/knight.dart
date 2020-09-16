import 'package:bonfire/bonfire.dart';
import 'package:flamecon/main.dart';
import 'package:flamecon/sprite_sheet_player.dart';
import 'package:flutter/cupertino.dart';

class Knight extends SimplePlayer with Lighting {
  Knight(Position initPosition)
      : super(
            initPosition: initPosition,
            animIdleLeft: SpriteSheetPlayer.idleLeft,
            animIdleRight: SpriteSheetPlayer.idleRight,
            animRunLeft: SpriteSheetPlayer.runLeft,
            animRunRight: SpriteSheetPlayer.runRight,
            width: tileSize,
            height: tileSize * 2,
            collision: Collision(
              width: tileSize,
              height: tileSize,
              align: Offset(0, tileSize),
            )) {
    lightingConfig = LightingConfig(
      radius: 50,
      blurBorder: 50,
    );
  }
}
