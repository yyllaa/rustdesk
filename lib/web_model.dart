import 'dart:typed_data';
import 'dart:js' as js;
import 'common.dart';

class PlatformFFI {
  static void clearRgbaFrame() {}

  static Uint8List getRgba() {
    return js.context.callMethod(js.context.callMethod('getRgba'));
    // return Uint8List.sublistView(ref.data.asTypedList(ref.len));
  }

  static String getByName(String name, [String arg = '']) {
    return js.context.callMethod('getByName', [name, arg]);
  }

  static void setByName(String name, [String value = '']) {
    js.context.callMethod('setByName', [name, value]);
  }

  static Future<Null> init() async {
    isWeb = true;
  }
}

final localeName = js.context.callMethod('getLanguage') as String;
