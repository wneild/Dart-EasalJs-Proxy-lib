import 'EasalJsContainerProxy.dart';
import 'dart:js';
class EasalJsStageProxy extends EasalJsContainerProxy {
  EasalJsStageProxy() : super(new JsObject(context['createjs']['Stage']));
  EasalJsStageProxy.withDelegate(JsObject delegate) : super(delegate);

  void update() => easalJsObject.callMethod('update');
  void tick() => update();
  void handleEvent(evt) => easalJsObject.callMethod('handleEvent', [evt]);
  void clear() => easalJsObject.callMethod('clear');
  String toDataURL([backgroundColor,mimeType]) => easalJsObject.callMethod('toDataURL', [backgroundColor,mimeType]);
  void enableMouseOver([frequency]) => easalJsObject.callMethod('enableMouseOver', [frequency]);
  void enableDOMEvents([bool enable]) => easalJsObject.callMethod('enableDOMEvents', [enable]);
  EasalJsStageProxy clone() => new EasalJsStageProxy.withDelegate(easalJsObject.callMethod('clone'));
  String toString() => easalJsObject.callMethod('toString');

}
