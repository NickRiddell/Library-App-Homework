class Person
  attr_reader :name, :books
  def initialize(name)
    @name = name
    @books = {}
  end
  def pretty_string
    "'#{@name}' has #{@books.size} books borrowed at the moment"
  end
  def borrow(book)
    @books[book.title] = book
  end
  def return_book(book_title)
    book = @books.delete(book_title)
  end


  def list_current_books
# The list_current_books method makes an array of the @books hash and loops round it searching for books on loan. They are then matched to their name and to their book in a string found in book class. 
    @books.map { |k, book| puts "#{name} has #{book.borrowed_book} on loan." }
  end

end