# book_repository.rb
class BookRepository
  def initialize
    @books = []
  end

  def add(id, title, author)
    already_book = @books.find {|book| book.id == id}
    book = nil
    if already_book.nil?
      book = Book.new(id, title, author)
      @books.push(book)
    end
    return book
  end

  def find_by_id(id)
    return @books.find {|book| book.id == id}
  end

  def delete(id)
    @books.delete_if {|book| book.id == id}
  end

  def all
    return @books
  end
end