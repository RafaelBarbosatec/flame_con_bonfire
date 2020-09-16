import 'package:bonfire/bonfire.dart';
import 'package:flame/animation.dart';

class SpriteSheetPlayer {
  static Animation get idleRight => Animation.sequenced(
        'player_spritesheet.png',
        4,
        textureWidth: 16,
        textureHeight: 32,
      );
  static Animation get idleLeft => Animation.sequenced(
        'player_spritesheet.png',
        4,
        textureWidth: 16,
        textureHeight: 32,
        textureY: 32,
      );
  static Animation get runRight => Animation.sequenced(
        'player_spritesheet.png',
        4,
        textureWidth: 16,
        textureHeight: 32,
        textureY: 64,
      );
  static Animation get runLeft => Animation.sequenced(
        'player_spritesheet.png',
        4,
        textureWidth: 16,
        textureHeight: 32,
        textureY: 96,
      );
}
