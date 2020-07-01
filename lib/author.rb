class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def add_post(posty)
    posty.author = self
  end
  
  def posts
    Post.all.select {|posty| posty.author == self}
  end
  
  def add_post_by_title(title)
    title = Post.new(title)
    add_post(title)
  end
  
end