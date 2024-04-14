class YesNoOption {
  final String question;
  final bool answer;

  YesNoOption({
    required this.question,
    required this.answer,
  });
}
 class MultipleOption {
  final List<String> options;
  final int correctIndex;
  
  MultipleOption({
    required this.options,
    required this.correctIndex,
  });
 }