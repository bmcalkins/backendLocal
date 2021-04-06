class SellersController < ApplicationController
    def new
    end

    def create
        user = Seller.new(
            name: params[:name],
            email: params[:email],
            password: params[:password],
            password_confirmation: params[:password_confirmation]
        )
        if seller.save
            session[:user_id] = user.id
            flash[:success] = "Succesfully Created User"
            redirect_to '/listings'
        else
            flash[:warning] = "Invalid Email or Password"
            redirect_to '/signup'
        end 
    end
end
end
