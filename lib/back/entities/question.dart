class Question {
  Question({required this.title, required this.options});
  final String title;
  final List<Option> options;
}

class Option {
  Option({required this.text, required this.value});

  final String text;
  final int value;
}