class Library
  attr_reader(:books)

  def initialize(books)
    @books = books
  end

  def find_info_by_title(name)
    for book in @books
      return book if book[:title] == name
    end
  end

  def find_rental_details_by_name(name)
    for book in @books
      return book[:rental_details] if book[:title] == name
    end
  end

  def add_book(name)
    new_book = {
    title: name,
    rental_details: {
      student_name: "",
      date: ""
      }
    }
    @books.push(new_book)
  end

end
