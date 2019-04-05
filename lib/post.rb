class Post

  attr_reader :title
  attr_accessor :author

  @@all = []

  def initialize(title)
    @title = title
    @author = author
    @@all << self
  end

  def author_name
    author == nil ? nil : author.name
  end

  #Class Methods

  def self.all
    @@all
  end

end