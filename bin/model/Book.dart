import '../Util/BookStatus.dart';

class Book {
  String _title;
  String _author;
  String _isbn;
  BookStatus _status;

  Book(
      {required String title,
      required String author,
      required String isbn,
      BookStatus status = BookStatus.AVAILABLE})
      : _title = title,
        _author = author,
        _isbn = isbn,
        _status = status;

  String get title => _title;

  String get author => _author;

  String get isbn => _isbn;

  BookStatus get status => _status;

  set title(String newTitle) {
    _title = newTitle;
  }

  set author(String newAuthor) {
    _author = newAuthor;
  }

  set isbn(String newIsbn) {
    _isbn = newIsbn;
  }

  set status(BookStatus newStatus) {
    _status = newStatus;
  }

  @override
  String toString() {
    return 'Book{title: $_title, author: $_author, isbn: $_isbn, status: ${_status == BookStatus.AVAILABLE ? "Available" : "Borrowed"}}';
  }
}
