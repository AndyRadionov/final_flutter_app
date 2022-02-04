import 'package:sprintf/sprintf.dart';

extension StringFormatExtension on String {
  String format(var argument) => sprintf(this, [argument]);
}
