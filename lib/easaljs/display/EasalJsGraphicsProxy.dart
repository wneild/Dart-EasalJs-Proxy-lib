import 'EasalJsObject.dart';
import 'dart:js';
class EasalJsGraphicsProxy extends EasalJsObject {

  EasalJsGraphicsProxy() : super(new JsObject(context['createjs']['Graphics']));
  EasalJsGraphicsProxy.withDelegate(JsObject delegate) : super(delegate);

  void draw(JsObject ctx) =>  easalJsObject.callMethod('draw', [ctx]);
  void drawAsPath(JsObject ctx) =>  easalJsObject.callMethod('drawAsPath', [ctx]);
  EasalJsGraphicsProxy moveTo(num x, num y) {easalJsObject.callMethod('moveTo', [x,y]); return this;}
  EasalJsGraphicsProxy lineTo(num x, num y) {easalJsObject.callMethod('lineTo', [x,y]); return this;}
  EasalJsGraphicsProxy arcTo(num x1, num y1, num x2, num y2, num radius) {easalJsObject.callMethod('arcTo', [x1,y1,x2,y2,radius]); return this;}
  EasalJsGraphicsProxy arc(num x, num y, num radius, num startAngle, num endAngle, num anticlockwise) {easalJsObject.callMethod('arc', [x,y,radius,startAngle,endAngle,anticlockwise]); return this;}
  EasalJsGraphicsProxy quadraticCurveTo(num cpx, num cpy, num x, num y) {easalJsObject.callMethod('quadraticCurveTo', [cpx,cpy,x,y]); return this;}
  EasalJsGraphicsProxy bezierCurveTo(num cp1x, num cp1y, num cp2x, num cp2y, num x, num y) {easalJsObject.callMethod('bezierCurveTo', [cp1x,cp1y,cp2x,cp2y,x,y]); return this;}
  EasalJsGraphicsProxy rect(num x, num y, num w, num h) {easalJsObject.callMethod('rect', [x,y,w,h]); return this;}
  EasalJsGraphicsProxy closePath() {easalJsObject.callMethod('closePath'); return this;}
  EasalJsGraphicsProxy clear() {easalJsObject.callMethod('clear'); return this;}
  EasalJsGraphicsProxy beginFill(String color) {easalJsObject.callMethod('beginFill', [color]); return this;}
  EasalJsGraphicsProxy beginLinearGradientFill(List<String> colors, List<num> ratios, num x0, num y0, num x1, num y1) {easalJsObject.callMethod('beginLinearGradientFill', [colors,ratios,x0,y0,x1,y1]); return this;}
  EasalJsGraphicsProxy beginRadialGradientFill(List<String> colors, List<num> ratios, num x0, num y0, num r0, num x1, num y1, num r1) {easalJsObject.callMethod('beginRadialGradientFill', [colors,ratios,x0,y0,r0,x1,y1,r1]); return this;}
  EasalJsGraphicsProxy beginBitmapFill(JsObject image, [String repetition, JsObject matrix]) {easalJsObject.callMethod('beginBitmapFill', [image,repetition,matrix]); return this;}
  EasalJsGraphicsProxy endFill() {easalJsObject.callMethod('endFill'); return this;}
  EasalJsGraphicsProxy setStrokeStyle([num thickness, String caps, String joints, num miterLimit, bool ignoreScale]) {easalJsObject.callMethod('setStrokeStyle', [thickness,caps,joints,miterLimit,ignoreScale]); return this;}
  EasalJsGraphicsProxy beginStroke(String color) {easalJsObject.callMethod('beginStroke', [color]); return this;}
  EasalJsGraphicsProxy beginLinearGradientStroke(List<String> colors, List<num> ratios, num x0, num y0, num x1, num y1) {easalJsObject.callMethod('beginLinearGradientStroke', [colors,ratios,x0,y0,x1,y1]); return this;}
  EasalJsGraphicsProxy beginRadialGradientStroke(List<String> colors, List<num> ratios, num x0, num y0, num r0, num x1, num y1, num r1) {easalJsObject.callMethod('beginRadialGradientStroke', [colors,ratios,x0,y0,r0,x1,y1,r1]); return this;}
  EasalJsGraphicsProxy beginBitmapStroke(JsObject image, String repetition) {easalJsObject.callMethod('beginBitmapStroke', [image,repetition]); return this;}
  EasalJsGraphicsProxy endStroke() {easalJsObject.callMethod('endStroke'); return this;}
  EasalJsGraphicsProxy drawRect(num x, num y, num w, num h) => rect(x,y,w,h);
  EasalJsGraphicsProxy drawRoundRect(num x, num y, num w, num h, num radius) {easalJsObject.callMethod('drawRoundRect',[x,y,w,h,radius]); return this;}
  EasalJsGraphicsProxy drawRoundRectComplex(num x, num y, num w, num h, num radiusTL, num radiusTR, num radiusBR, num radiusBL) {easalJsObject.callMethod('drawRoundRectComplex',[x,y,w,h,radiusTL,radiusTR,radiusBR,radiusBL]); return this;}
  EasalJsGraphicsProxy drawCircle(num x, num y, num radius) {easalJsObject.callMethod('drawCircle',[x,y,radius]); return this;}
  EasalJsGraphicsProxy drawEllipse(num x, num y, num w, num h) {easalJsObject.callMethod('drawEllipse',[x,y,w,h]); return this;}
  EasalJsGraphicsProxy drawPolyStar(num x, num y, num radius, num sides, num pointSize, num angle) {easalJsObject.callMethod('drawPolyStar',[x,y,radius,sides,pointSize,angle]); return this;}
  EasalJsGraphicsProxy decodePath(String str) {easalJsObject.callMethod('decodePath',[str]); return this;}

  EasalJsGraphicsProxy clone() => new EasalJsGraphicsProxy.withDelegate(easalJsObject.callMethod('clone'));


}
