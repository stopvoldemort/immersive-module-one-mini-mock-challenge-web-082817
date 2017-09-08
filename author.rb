class Author

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def books
    Book.all.select {|b| b.author == self.name}
  end

  def write_book(title, word_count)
    Book.new(title, self.name, word_count)
  end

  def total_words
    sum(self.books.map {|b| b.word_count})
  end

  def self.most_words
    hashes = self.all.map do |a|
      {a => a.total_words}
    end
    hashes.max_by{|k,v| v}.keys[0]
  end

  def sum(array)
    array.inject(0){|sum,x| sum + x }
  end

end
