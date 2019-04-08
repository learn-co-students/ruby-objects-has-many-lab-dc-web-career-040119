require "pry"

class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(post)
    post_name = Post.new(post)
    post_name.author = self
    @posts << post_name
  end

  def self.post_count
    array = Post.all.map do |post|
      if post.author
        post
      end
    end
    return array.length
  end

end
