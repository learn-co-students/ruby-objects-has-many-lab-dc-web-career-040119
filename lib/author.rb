class Author

  attr_reader :posts
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    post.author = self
    posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  #Class Methods

  def self.all
    @@all
  end

  def self.post_count
    total = 0
    all.each { |author| total += author.posts.length }
    total
  end

end