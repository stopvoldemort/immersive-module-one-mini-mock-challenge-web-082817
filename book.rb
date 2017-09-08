class Book

  attr_accessor :title, :author, :word_count

  @@all = []

  def initialize(title, author, word_count)
    @title = title
    @author = author
    @word_count = word_count
    @@all << self
  end

  def self.all
    @@all
  end


end
