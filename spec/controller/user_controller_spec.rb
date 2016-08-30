require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "create user" do
    it "should create new user" do

      params={ user: {email: "user@mail.com", username: "erlich" } }
      post :create, params: params

      user = User.find_by(email: "user@mail.com")
      expect(User.count).to eql(1)
      expect(user.email).to eql("user@mail.com")
      expect(user.username).to eql("erlich")
    end

  end

end
