import 'package:quiz_app/options.dart';

class Questions {
  final int? questionId;
  final String? question;
  final YesNoOption? yesNoOption;
  final MultipleOption? multipleOption;

  Questions({
    this.questionId,
    this.question,
    this.yesNoOption,
    this.multipleOption,
  });
}