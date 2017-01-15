require_relative '../models/blog.rb'
require_relative '../models/post.rb'

RSpec.describe "Post" do
	let(:my_post) 			 {Post.new}
	let(:my_first_post)  {Post.new("Whatever")}
	let(:my_second_post) {Post.new("My second post, what a day >.<")}

	pending "expect my post to have a stringof text" do
		expect(my_first_post.posts).to eq([my_first_post])
	end
end