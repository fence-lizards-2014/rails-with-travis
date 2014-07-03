require 'spec_helper'

describe Admin::PostsController do
  describe "admin panel" do
    it "#index" do
      get :index
      expect(assigns(:posts)).to eq Post.all
    end

    it "#new" do
      pending
    end

    context "#create" do
      it "creates a post with valid params" do
        pending
      end
      it "doesn't create a post when params are invalid" do
        pending
      end
    end

    context "#edit" do
      it "updates a post with valid params" do
        pending
      end
      it "doesn't update a post when params are invalid" do
        pending
      end
    end

    it "#destroy" do
      pending
    end
  end
end
