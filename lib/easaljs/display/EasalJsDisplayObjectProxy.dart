import 'EasalJsStageProxy.dart';
import 'EasalJsObject.dart';
import 'dart:js';
class EasalJsDisplayObjectProxy extends EasalJsObject {

  EasalJsDisplayObjectProxy(JsObject delegate) : super(delegate);

  num get x => easalJsObject['x'];
  void set x(num x) => easalJsObject['x'] = x;
  num get y => easalJsObject['y'];
  void set y(num y) => easalJsObject['y'] = y;
  num get scaleX => easalJsObject['scaleX'];
  void set scaleX(num scaleX) => easalJsObject['scaleX'] = scaleX;
  num get scaleY => easalJsObject['scaleY'];
  void set scaleY(num scaleY) => easalJsObject['scaleY'] = scaleY;
  num get regX => easalJsObject['regX'];
  void set regX(num regX) => easalJsObject['regX'] = regX;
  num get regY => easalJsObject['regY'];
  void set regY(num regY) => easalJsObject['regY'] = regY;


  bool isVisible() => easalJsObject.callMethod('isVisible');
  bool draw(ctx,ignoreCache) =>  easalJsObject.callMethod('draw', [ctx, ignoreCache]);
  void updateContext(ctx) =>  easalJsObject.callMethod('updateContext', [ctx]);
  void cache(x,y,width,height,scale) =>  easalJsObject.callMethod('cache', [x,y,width,height,scale]);
  void updateCache(compositeOperation) =>  easalJsObject.callMethod('updateCache', [compositeOperation]);
  void uncache() => easalJsObject.callMethod('uncache');
  String getCacheDataURL() => easalJsObject.callMethod('getCacheDataURL');
  EasalJsStageProxy getStage() => new EasalJsStageProxy.withDelegate(easalJsObject.callMethod('getStage'));
  JsObject localToGlobal(num x, num y) => easalJsObject.callMethod('localToGlobal',[x,y]);
  JsObject globalToLocal(num x, num y) => easalJsObject.callMethod('globalToLocal',[x,y]);
  JsObject localToLocal(num x, num y, EasalJsDisplayObjectProxy target) => easalJsObject.callMethod('localToLocal',[x,y,target.easalJsObject]);
  EasalJsDisplayObjectProxy setTransform(x,y,scaleX,scaleY,rotation,skewX,skewY,regX,regY) { easalJsObject.callMethod('setTransform',[x,y,scaleX,scaleY,rotation,skewX,skewY,regX,regY]); return this;}
  JsObject getMatrix(JsObject matrix) => easalJsObject.callMethod('getMatrix', [matrix]);
  JsObject getConcatenatedMatrix(JsObject matrix) => easalJsObject.callMethod('getConcatenatedMatrix', [matrix]);
  bool hitTest(x,y) => easalJsObject.callMethod('hitTest', [x,y]);
  EasalJsDisplayObjectProxy set(props) {easalJsObject.callMethod('set', [props]); return this;}
  EasalJsDisplayObjectProxy clone() => new EasalJsDisplayObjectProxy(easalJsObject.callMethod('clone'));
  String toString() => easalJsObject.callMethod('toString');

}
