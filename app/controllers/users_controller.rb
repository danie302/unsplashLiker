class UsersController < ApplicationController
    def index
        @title = 'Hey ruby'
        
    end

    def entry
        @title = params[:user]
        render :index
    end
end
