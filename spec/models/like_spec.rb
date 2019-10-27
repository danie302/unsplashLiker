require 'rails_helper'

RSpec.describe Like, type: :model do
  context 'validation tests' do 
    it 'ensures photo_id presence' do
      User.new(name: "tester").save
      user = User.find_by_name("tester")
      like = user.likes.create(photo_id: "sad3d")
      expect(like[:photo_id]).to eq("sad3d")
    end
    it 'ensures user_id presence' do
      User.new(name: "tester").save
      user = User.find_by_name("tester")
      like = user.likes.create(photo_id: "azcww2d")
      expect(like[:user_id]).to eq(user[:id])
    end
  end
end
