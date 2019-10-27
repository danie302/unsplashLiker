require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    context 'POST #likePhotos' do
        it 'find an existing user' do 
            name = "daniel"
            User.new(name: name).save
            post :likePhotos, params: {user: {name: "daniel"}}
            puts "----------------------------"
            puts @controller.instance_variable_get(:@user)
            expect(@controller.instance_variable_get(:@user)).to_not be_nil 
        end
    end
end
