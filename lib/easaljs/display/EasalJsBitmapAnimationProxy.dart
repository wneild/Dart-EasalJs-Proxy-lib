import 'EasalJsDisplayObjectProxy.dart';
class EasalJsBitmapAnimationProxy extends EasalJsDisplayObjectProxy {

  EasalJsBitmapAnimationProxy(JsObject delegate) : super(delegate);

  JsObject get onAnimationEnd => easalJsObject['onAnimationEnd'];
  set onAnimationEnd(JsObject value) => easalJsObject['onAnimationEnd'] = value;

  int get currentFrame => easalJsObject['currentFrame'];
  set currentFrame(int value) => easalJsObject['currentFrame'] = value;

  String get currentAnimation => easalJsObject['currentAnimation'];
  set currentAnimation(String value) => easalJsObject['currentAnimation'] = value;

  bool get paused => easalJsObject['paused'];
  set paused(bool value) => easalJsObject['paused'] = value;

  JsObject get spriteSheet => easalJsObject['spriteSheet'];
  set spriteSheet(JsObject value) => easalJsObject['spriteSheet'] = value;

  bool get snapToPixel => easalJsObject['snapToPixel'];
  set snapToPixel(bool value) => easalJsObject['snapToPixel'] = value;

  int get offset => easalJsObject['offset'];
  set offset(int value) => easalJsObject['offset'] = value;

  int get currentAnimationFrame => easalJsObject['currentAnimationFrame'];
  set currentAnimationFrame(int value) => easalJsObject['currentAnimationFrame'] = value;


  void play() => easalJsObject.callMethod('play');
  void stop() => easalJsObject.callMethod('stop');
  void gotoAndPlay(String frameOrAnimation) => easalJsObject.callMethod('gotoAndPlay', [frameOrAnimation]);
  void gotoAndStop(String frameOrAnimation) => easalJsObject.callMethod('gotoAndStop', [frameOrAnimation]);
  void advance() => easalJsObject.callMethod('advance');
  JsObject getBounds() => easalJsObject.callMethod('getBounds');
  EasalJsBitmapAnimationProxy clone() => new EasalJsBitmapAnimationProxy(easalJsObject.callMethod('clone'));
}
