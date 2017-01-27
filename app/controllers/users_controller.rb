#Help! Auth is broken in production
class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
  end

    def index
        @users = User.all
    end
end
