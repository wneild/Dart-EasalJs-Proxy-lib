import 'dart:js';
abstract class EasalJsObject {
  final JsObject _delegate;
  EasalJsObject(this._delegate);
  JsObject get easalJsObject => _delegate;
}
