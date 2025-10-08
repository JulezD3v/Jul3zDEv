/*BREAKOUT SESSION QUESTION
You are to build a simple console app in Dart to manage books in a library.
Requirements:
Create a Book class with the following:
Fields: title (String), author (String), year (int), isBorrowed (bool, default false).
A constructor to initialize a book.
A method borrowBook() that sets isBorrowed to true, but should throw an exception if the book is already borrowed.
A method returnBook() that sets isBorrowed to false.
Create a Library class with:
A List<Book> to hold books.
A method addBook(Book book) to add a new book.
A method searchByTitle(String keyword) that returns a list of books containing the keyword in their title (case insensitive).
A method listAvailableBooks() that returns all books not borrowed.
In main():
Add at least 5 books to the library.
Let the user interact via console input with a menu:
1. List available books
2. Search book by title
3. Borrow a book
4. Return a book
5. Exit*/
 


class BookTracker{
  String ? title;
  String? author;
  int yearOfPublication; // ??
  bool isBorrowed;


  //Single line constructor
  BookTracker(this.title, this.author, this.yearOfPublication, {this.isBorrowed = false});

  void displayInfo(){
    print("$title\n Written by: $author | Year of Publication: $yearOfPublication \n Borrowed : ${isBorrowed ? "Yes": "No"}\n");

  
  }                             
  void borrow(){
    if(!isBorrowed){
      isBorrowed = true;
      print("$title has already been borrowed");
    } else {
      print("$title is available for borrowing");
    } 
  }
   
   
  
}



void main(){
  List<BookTracker> books = [];
  books.add(BookTracker("Mother", "M.Gorky", 1950));
  books.add(BookTracker("Rich Dad Poor Dad","Robert Kiyosaki", 1998));
  books.add(BookTracker("Nine Perfect Strangers","Liane Moriarty", 2018));
  books.add(BookTracker("Chozi La Heri","Asumpta K. Matei", 2014));
  books.add(BookTracker("Blossoms of The Savannah","H. R. Ole Kulet", 2018));
  books.add(BookTracker("Kaizen","Sarah Harvey", 2019));

  for(var book in books){
    book.displayInfo();
  }

  print("\n ----Borrowed Books----\n");
  //Adds to the number of books that have been borrowed
  books[3].borrow();
  books[0].borrow();

  print("\n Available Books ");

  for(var book in books){
    if (!book.isBorrowed){
      book.displayInfo();
    }
  }

}