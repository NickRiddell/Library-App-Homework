require 'pry-byebug'
require_relative './library'
require_relative 'book'
require_relative 'person'

#TODO: create a library
library = Library.new 'Book Emporium'

#TODO: create book
book_1 = Book.new({title: 'The Bible', genre: 'Fantasy'})
library.add_book(book_1)
library.add_book(Book.new(title: "The Hobbit", genre: "Fantasy"))
library.add_book(Book.new(title: "Feersum Endjinn", genre: "Science Fiction"))
library.add_book(Book.new(title: "Histories", genre: "History"))
library.add_book(Book.new(title: "To Kill a Mockingbird", genre: "Fiction"))
library.add_book(Book.new(title: "A Brief History of Time", genre: "Non-Fiction"))

#TODO: list books
puts "All books #{library.list_books}"
#TODO: create person
person_1 = Person.new("Sebastian")
library.add_person(person_1)
library.add_person(Person.new('Fred'))
library.add_person(Person.new('Wilma'))
library.add_person(Person.new('Barney'))
library.add_person(Person.new('Betty'))

#TODO: list people
puts "All people: #{library.list_people}"
#TODO: lend book
person_name = "Wilma"
book_title = "The Hobbit"
library.lend(person_name, book_title)
library.lend("Sebastian", "To Kill a Mockingbird")
library.lend("Betty", "Histories")
puts "All books #{library.list_books}"
puts "All people #{library.list_people}"
puts"\n"
#TODO: return book
library.return(person_name, book_title)
puts "All books #{library.list_books}"
puts "All people #{library.list_people}"
puts"\n"
#TODO: list borrowed books
library.borrowed_books
binding.pry;''