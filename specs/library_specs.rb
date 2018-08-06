require("minitest/autorun")
require("minitest/rg")
require_relative("../library.rb")

class LibraryTest < MiniTest::Test
  def setup
    @library_01 = [{
    title: "lord_of_the_rings",
    rental_details: {
      student_name: "Jeff",
      date: "01/12/16"
      }
    }]
  end

  def test_get_book
    library = Library.new(@library_01)
    assert_equal(@library_01, library.books )
  end
end
