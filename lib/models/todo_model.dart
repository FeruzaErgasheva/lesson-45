class TodoModel {
  int id;
  String description;
  String title;
  DateTime date;
  bool isCompleted;

  TodoModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.isCompleted,
      required this.date});
}
