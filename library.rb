class Library
  attr_reader(:books)

  def initialize(books)
    @books = books
  end

  def find_info_by_title(name)
    for book in @books
      return book if book[:title] == name
    end
    return nil
  end

  def find_rental_details_by_name(name)
    for book in @books
      return book[:rental_details] if book[:title] == name
    end
    return nil
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

  def change_rental_details(book_name, student_name, date)
    book = find_info_by_title(book_name)
    return if book == nil
    book[:rental_details][:student_name] = student_name
    book[:rental_details][:date] = date
  end

end
