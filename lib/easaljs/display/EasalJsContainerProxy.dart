import 'EasalJsObject.dart';
import 'EasalJsDisplayObjectProxy.dart';
import 'dart:js';
class EasalJsContainerProxy extends EasalJsDisplayObjectProxy {

  EasalJsContainerProxy() : super(new JsObject(context['createjs']['Container']));
  EasalJsContainerProxy.withDelegate(JsObject delegate) : super(delegate);

  List get children => easalJsObject['children'];
  set children(List value) => easalJsObject['children'] = value;

  EasalJsDisplayObjectProxy addChild(EasalJsObject child) =>  new EasalJsContainerProxy.withDelegate(easalJsObject.callMethod('addChild', [child.easalJsObject]));
  EasalJsDisplayObjectProxy addChildAt(EasalJsDisplayObjectProxy child, int index) => new EasalJsContainerProxy.withDelegate(easalJsObject.callMethod('addChildAt', [child.easalJsObject, index]));
  bool removeChild(EasalJsDisplayObjectProxy child) => easalJsObject.callMethod('removeChild', [child.easalJsObject]);
  bool removeChildAt(int index) => easalJsObject.callMethod('removeChildAt', [index]);
  void removeAllChildren() => easalJsObject.callMethod('removeAllChildren');
  EasalJsDisplayObjectProxy getChildAt(int index) => new EasalJsContainerProxy.withDelegate(easalJsObject.callMethod('getChildAt', [index]));
  EasalJsDisplayObjectProxy getChildByName(String name) => new EasalJsContainerProxy.withDelegate(easalJsObject.callMethod('getChildByName', [name]));
  void sortChildren() => easalJsObject.callMethod('sortChildren');

}
