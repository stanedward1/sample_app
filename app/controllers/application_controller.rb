class ApplicationController < ActionController::Base
    include SessionsHelper
    # before_action :logged_in_user, only: [ :create, :destroy ]

    def create
        @microposts = current_user.microposts.build(micropost_params)
        if @micropost.save
            flash[:success] = "Micropost created!"
            redirect_to root_url
        else
            render 'static_pages/home'
        end
    end

    def destroy
    end

    private

    def logged_in_user
        unless logged_in?
            store_location
            flash[:danger] = "Please log in"
            redirect_to login_url
        end
    end

    def micropost_params
        params.require(:micropost).permit(:content)
    end

end
