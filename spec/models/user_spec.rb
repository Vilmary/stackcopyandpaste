require 'rails_helper'

RSpec.describe User, type: :model do

  describe "creation" do

    it "has a valid class" do
      expect(described_class).to_not be_nil
    end

    context "with invalid attributes" do

      it "should not be valid" do
        @user = build(:user, username: "", firstname: "", lastname: "")
        expect(@user.save).to be false
      end
     
      it "No debe haber dos usuarios repetidos" do
        @user = build(:user)
        @user.save
        @user2=build(:user, username: @user.username)
        
        expect(@user2.save).to be false
      end
      
      
       it "Email Unico" do
        @user = build(:user)
        @user.save
        @user2=build(:user, email: @user.email)
        
        expect(@user2.save).to be false
      end
      
      
    end

    context "with valid attributes" do

      it "should be valid" do
        @user = build(:user)
        expect(@user.save).to be true
      end

    end

  end

end