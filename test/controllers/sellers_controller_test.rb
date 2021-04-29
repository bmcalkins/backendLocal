require 'test_helper'

class SellersControllerTest < ActionDispatch::IntegrationTest
  def index
    @sellers = Seller.all
       if @sellers
          render json: {
          sellers: @sellers
       }
      else
          render json: {
          status: 500,
          errors: ['no sellers found']
      }
     end
  end
  def show
    @seller = Seller.find(params[:id])
        if @seller
            render json: {
            seller: @seller
        }
        else
          render json: {
          status: 500,
          errors: ['user not found']
        }
       end
    end
  
  def create
     @seller = Seller.new(user_params)
         if @seller.save
             login!  
             render json: {
             status: :created,
             seller: @seller
         }
        else 
            render json: {
            status: 500,
            errors: @seller.errors.full_messages
        }
        end
    end
  private
  
  def user_params
     params.require(:seller).permit(:username, :password, :password_confirmation)
 end
end
