require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    context 'GET #index' do
        it 'returns a success response' do 
            get :likesEntry, :params => {user: => {name: => "daniel"}}
            puts response
            expect(response).to be_success
        end
    end
end
