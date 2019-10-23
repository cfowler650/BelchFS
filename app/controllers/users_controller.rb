# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UsersController < ApplicationController
    def index
        @users = User.all()
    end

    def create
       @user = User.new(user_params)
        @user.save
    end

    def show
        @user = User.find(:all, :conditions => { :username => params['username'] }, :limit => 1)
        # @user = User.find_by(username: params[:username], password_digest: params[:password_digest])

        if @user.empty?
            raise ActionController::RoutingError.new('Not Found')
        else
            redirect_to "http://localhost:3000/#/restaurant_page"
        end
    end


    def user_params
        params.permit(:username, :email, :name, :password_digest)
    end

end
