import '../Util/BookStatus.dart';
import '../model/TextBook.dart';

class BookController {
  BookController._internal();

  static final BookController _instance = BookController._internal();

  factory BookController() {
    return _instance;
  }

  List<TextBook> bookList = [];

  void add(TextBook book) {
    bookList.add(book);
    print("Added book: ${book.title}");
  }

  void update(String title, BookStatus newStatus) {
    for (var book in bookList) {
      if (book.title.toLowerCase() == title.toLowerCase()) {
        book.status = newStatus;
        print("Updated status of ${book.title} to $newStatus");
        return;
      }
    }
    print("Book not found: $title");
  }

  void removeBook(String title) {
    bookList
        .removeWhere((book) => book.title.toLowerCase() == title.toLowerCase());
    print("Removed book: $title");
  }

  List<TextBook> searchByTitle(String title) {
    return bookList
        .where((book) => book.title.toLowerCase().contains(title.toLowerCase()))
        .toList();
  }

  List<TextBook> searchByAuthor(String author) {
    return bookList
        .where(
            (book) => book.author.toLowerCase().contains(author.toLowerCase()))
        .toList();
  }

  List<TextBook> filterByStatus(String status) {
    return bookList.where((book) => book.status == status).toList();
  }

  void displayBooks() {
    if (bookList.isEmpty) {
      print("No books in the collection.");
    } else {
      for (var book in bookList) {
        print(book);
      }
    }
  }
}
