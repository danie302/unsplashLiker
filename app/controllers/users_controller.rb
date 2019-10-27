class UsersController < ApplicationController
    def index
        
    end

    def entry
        @user = User.find_by_name(params[:user][:name])
        if @user
            redirect_to :action => "showPhotos", name: params[:user][:name]
        else
            @user = User.new(post_params)
            @user.save
            redirect_to :action => "showPhotos", name: params[:user][:name]
        end
    end

    def showPhotos
        @user = User.find_by_name(params[:name])
        @@name = params[:name]
        @photos = Unsplash::Photo.random()
        @@photo = @photos
    end

    def nextPhoto
        if params[:commit] == "next"
            @user = User.find_by_name(@@name)
            @photos = Unsplash::Photo.random()
            @@photo = @photos
            render :showPhotos  
        elsif params[:commit] == "like"
            @user = User.find_by_name(@@name)
            if @user.likes.create(photo_id: @@photo[:id])
                @photos = Unsplash::Photo.random()
                @@photo = @photos
                render :showPhotos
            else
                render plain: "failed"
            end
        else
            render plain: "ERROR"
        end
    end

    def indexPhotos
    end

    def likePhotos
        @user = User.find_by_name(params[:user][:name])
        if @user
            puts "Redirect to likesEntry"
            redirect_to :action => "likesEntry", name: params[:user][:name]
        else
            redirect_to :action => "index", name: params[:user][:name]
        end
    end

    def likesEntry
        @user = User.find_by_name(params[:name])
        @photos = Like.where(user_id: @user.id)
    end
    
    private def post_params
        params.require(:user).permit(:name)
    end
end
