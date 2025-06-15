import 'dart:io';

class Book {
  String title;
  String author;
  String isbn;
  bool isBorrowed = false;
  String? borrowedBy;
  DateTime? borrowedOn;
  DateTime? dueDate;

  Book(this.title, this.author, this.isbn);

  void showInfo() {
    print('Title: $title, Author: $author, ISBN: $isbn');
    if (isBorrowed) {
      print('Status: Borrowed by $borrowedBy, Due on: $dueDate');
    } else {
      print('Status: Available');
    }
  }
}

class Member {
  String name;
  String id;

  Member(this.name, this.id);
}

class Library {
  List<Book> books = [];
  List<Member> members = [];

  void addBook(String title, String author, String isbn) {
    books.add(Book(title, author, isbn));
    print('Book "$title" added to the library.');
  }

  void registerMember(String name, String id) {
    members.add(Member(name, id));
    print('Member "$name" registered.');
  }

  Book? findBook(String title) {
    for (var book in books) {
      if (book.title.toLowerCase() == title.toLowerCase()) {
        return book;
      }
    }
    return null;
  }

  Member? findMember(String id) {
    for (var member in members) {
      if (member.id.toLowerCase() == id.toLowerCase()) {
        return member;
      }
    }
    return null;
  }

  void borrowBook(String title, String memberId) {
    Book? book = findBook(title);
    Member? member = findMember(memberId);

    if (book == null) {
      print('Book not found.');
      return;
    }
    if (member == null) {
      print('Member not found.');
      return;
    }
    if (book.isBorrowed) {
      print('Book is already borrowed.');
      return;
    }

    book.isBorrowed = true;
    book.borrowedBy = member.name;
    book.borrowedOn = DateTime.now();
    book.dueDate = book.borrowedOn!.add(Duration(days: 7));

    print('${member.name} borrowed "${book.title}" on ${book.borrowedOn}');
    print('Due date is ${book.dueDate}');
  }

  void returnBook(String title) {
    Book? book = findBook(title);
    if (book == null) {
      print('Book not found.');
      return;
    }
    if (!book.isBorrowed) {
      print('Book is not borrowed.');
      return;
    }

    DateTime returnedOn = DateTime.now();
    print('${book.borrowedBy} returned "${book.title}" on $returnedOn');

    if (book.dueDate != null && returnedOn.isAfter(book.dueDate!)) {
      int lateDays = returnedOn.difference(book.dueDate!).inDays;
      int fine = lateDays * 10;
      print('Late return by $lateDays day(s). Fine: Rs. $fine');
    } else {
      print('Returned on time. No fine.');
    }

    book.isBorrowed = false;
    book.borrowedBy = null;
    book.borrowedOn = null;
    book.dueDate = null;
  }

  void showAllBooks() {
    if (books.isEmpty) {
      print("No books in the library.");
    } else {
      for (var book in books) {
        book.showInfo();
        print('---');
      }
    }
  }

  void showAllMembers() {
    if (members.isEmpty) {
      print("No members registered.");
    } else {
      for (var member in members) {
        print('Name: ${member.name}, ID: ${member.id}');
      }
    }
  }

  void listAvailableBooks() {
    var available = books.where((b) => !b.isBorrowed).toList();
    if (available.isEmpty) {
      print("No available books.");
      return;
    }
    print("\nAvailable Books:");
    for (var book in available) {
      book.showInfo();
      print('---');
    }
  }

  void listBorrowedBooks() {
    var borrowed = books.where((b) => b.isBorrowed).toList();
    if (borrowed.isEmpty) {
      print("No borrowed books.");
      return;
    }
    print("\nBorrowed Books:");
    for (var book in borrowed) {
      book.showInfo();
      print('---');
    }
  }
}

void main() {
  Library library = Library();
  bool running = true;

  while (running) {
    print('\n=== Library Management System ===');
    print('1. Add Book');
    print('2. Register Member');
    print('3. Show All Books');
    print('4. Show All Members');
    print('5. Borrow Book');
    print('6. Return Book');
    print('7. List Available Books');
    print('8. List Borrowed Books');
    print('9. Exit');
    stdout.write('Enter your choice: ');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write('Enter title: ');
      String? title = stdin.readLineSync();
      stdout.write('Enter author: ');
      String? author = stdin.readLineSync();
      stdout.write('Enter ISBN: ');
      String? isbn = stdin.readLineSync();
      if (title != null && author != null && isbn != null) {
        library.addBook(title, author, isbn);
      }
    } else if (choice == '2') {
      stdout.write('Enter member name: ');
      String? name = stdin.readLineSync();
      stdout.write('Enter member ID: ');
      String? id = stdin.readLineSync();
      if (name != null && id != null) {
        library.registerMember(name, id);
      }
    } else if (choice == '3') {
      library.showAllBooks();
    } else if (choice == '4') {
      library.showAllMembers();
    } else if (choice == '5') {
      stdout.write('Enter book title: ');
      String? title = stdin.readLineSync();
      stdout.write('Enter member ID: ');
      String? id = stdin.readLineSync();
      if (title != null && id != null) {
        library.borrowBook(title, id);
      }
    } else if (choice == '6') {
      stdout.write('Enter book title to return: ');
      String? title = stdin.readLineSync();
      if (title != null) {
        library.returnBook(title);
      }
    } else if (choice == '7') {
      library.listAvailableBooks();
    } else if (choice == '8') {
      library.listBorrowedBooks();
    } else if (choice == '9') {
      print('Exiting Library System...');
      running = false;
    } else {
      print('Invalid choice. Please try again.');
    }
  }
}
