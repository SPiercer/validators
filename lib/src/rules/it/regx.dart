import 'package:queen_validators/src/text_rule_class.dart';

/// allow using a regular expression as validation rule
class RegExpRule extends TextValidationRule {
  final RegExp regX;
  RegExpRule(this.regX, [String? msg]) : super(msg ?? 'did not match');

  @override
  bool isValid(String input) => regX.hasMatch(input);
}
