require 'minitest/autorun'
require './blog'

describe Blog do
  
  before do
    @blog = Blog.new
  end

  describe "title" do
    it "return the title of the blog" do
      @blog.title.must_equal "Rails master blog"
    end
  end
end 