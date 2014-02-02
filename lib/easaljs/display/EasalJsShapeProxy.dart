import 'EasalJsGraphicsProxy.dart';
import 'EasalJsDisplayObjectProxy.dart';
import 'EasalJsObject.dart';
import 'dart:js';
class EasalJsShapeProxy extends EasalJsDisplayObjectProxy {

  EasalJsShapeProxy() : super(new JsObject(context['createjs']['Shape']));
  EasalJsShapeProxy.withDelegate(JsObject delegate) : super(delegate);

  EasalJsGraphicsProxy get graphics => new EasalJsGraphicsProxy.withDelegate(easalJsObject['graphics']);
  EasalJsShapeProxy clone() => new EasalJsShapeProxy.withDelegate(easalJsObject.callMethod('clone'));
  String toString() => easalJsObject.callMethod('toString');
}
