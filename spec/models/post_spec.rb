require 'spec_helper'

describe Post do
  it "title should be automatically titleized before save" do
    pending
  end

  it "post should be unpublished by default" do
    pending
  end

  # a slug is an automaticaly generated url-friendly
  # version of the title
  it "slug should be automatically generated" do
    post = Post.new
    post.title   = "New post!"
    post.content = "A great story"
    expect {
      post.save
    }.to change { Post.last }.from(nil).to("new-post")
  end
end
