import 'package:queen_validators/src/text_rule_class.dart';

/// checks if input does not contain the provided value;

class NotContains extends TextValidationRule {
  final String value;

  NotContains(this.value, [String? msg])
      : super(msg ?? 'must not contain $value');

  @override
  bool isValid(String input) => !input.trim().contains(value);
}
