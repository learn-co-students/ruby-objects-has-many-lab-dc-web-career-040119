
require 'pry'
class Author 

	attr_accessor :name, :posts

	def initialize(name)
		@name = name
		@posts = []
	end 

	def add_post(post)
		if Post.all.include?(post)
			self.posts << post
			post.author = self
		end 
	end 

	def add_post_by_title(post_name)
		self.posts << Post.new(post_name)
		Post.all.last.author = self
	end 

	def self.post_count 
		Post.all.select do |post|
			post.author = self
		end.count
	end 
end 