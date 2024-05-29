class NoteModel {
  int id;
  String title;
  String content;
  DateTime createdDate;
  NoteModel(
      {required this.content,
      required this.createdDate,
      required this.id,
      required this.title});
}
