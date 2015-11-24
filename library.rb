class Library
  attr_reader :name, :books, :people

  def initialize(name)
    @name = name
    @books = {}
    @people = {}
  end

  def books
    @books
  end

  def add_book(book)
    @books[book.title] = book
  end

  def list_books
    if @books.empty?
      "There are no books in the library at present"
    else
      book_strings = @books.map do |key, book|
        book.pretty_string
      end
      book_strings.join("\n")
    end
  end

  def add_person(person)
    @people[person.name] = person
  end

  def list_people
    if @people.empty?
      "No people here!"
    else
      people_strings = @people.map do |key, person|
        person.pretty_string
      end
      people_strings.join("\n")
    end
  end

  def lend(person_name, book_title)
    person = @people[person_name]
    book = @books.delete(book_title)
    person.borrow(book)
  end

  def return(person_name, book_title)
    person = @people[person_name]
    book = @people[person_name].books[book_title]
    person.return_book(book_title)
    self.add_book(book)
  end

  def borrowed_books
    # books = @people.map { |key, person| person.books unless person.books.empty? }.compact
    # books.each { |book| puts book }

#First attempt above. Borrowed books applies the .map method to the people hash. This creates a new arry with the block applied. Here the block loops round each person via their key and applies the .list_current_books method.
    @people.map { |k, person| person.list_current_books }

  end
end