require_relative '../models/blog.rb'
require_relative '../models/post.rb'

RSpec.describe "Post" do
	let(:my_blog) {Blog.new}
	let(:post_1)  {Post.new("My first post")}
	let(:post_2)  {Post.new("My second post")}

	it "returns an empty array of posts" do
		expect(my_blog.posts).to be_an(Array)
	end

	it "add posts to the array of posts" do
		expect(my_blog.add_post(post_1)).to eq([post_1])
	end
end