require 'rails_helper'

describe Post do
  describe "creation" do
    context "with invalid attributes" do
      it "should not be valid" do
        @post = Post.new(title: "", description: "", author: "", category: "")
        expect(@post.save).to be false
      end
      
       it "should not be valid with short title" do
        @post = build(:post, category: "H")
        expect(@post.save).to be false
      end
      
    end
    
   
  end
end