import '../Util/BookStatus.dart';
import 'Book.dart';

class TextBook extends Book {
  String _subjectArea;
  String _gradeLevel;

  TextBook(
      {required super.title,
      required super.author,
      required super.isbn,
      required String subjectArea,
      required String gradeLevel})
      : _subjectArea = subjectArea,
        _gradeLevel = gradeLevel;

  @override
  String toString() {
    return 'TextBook{title: $title, author: $author, isbn: $isbn, subjectArea: $_subjectArea, gradeLevel: $_gradeLevel, status: ${status == BookStatus.AVAILABLE ? "Available" : "Borrowed"}}';
  }
}
