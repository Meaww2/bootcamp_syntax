# book_service.rb
class BookService
  def initialize(repository = BookRepository.new)
    @repository = repository
  end

  def add_book(id, title, author)
    return @repository.add(id, title, author)
  end

  def update_book(id, title: '', author: '')
    selected_book = @repository.find_by_id(id)
    if selected_book.nil?
      return nil
    end
    if !title.empty?
      selected_book.title = title
    end
    if !author.empty?
      selected_book.author = author
    end
    return selected_book
  end

  def delete_book(id)
    @repository.delete(id)
  end

  def list_books
    books_detail = []
    @repository.all.each {|book|
      books_detail.push(book.info)
    }
    return books_detail
  end
end