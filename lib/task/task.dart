class Todo {
  final String title;
  final bool isDone;
  final int id;
  final DateTime date;

  Todo({
    this.id = 0,
    required this.title,
    this.isDone = false,
    required this.date,
  });
}
