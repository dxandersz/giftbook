class Api::V1::GiftboxesController < ApplicationController
    
    def index
        @giftboxes = Giftbox.all
        render json: @giftboxes
    end

    def show
        @giftbox = Giftbox.find(params[:id])
        render json: @giftbox
    end

    def create
        @giftbox = Giftbox.new(giftbox_params)

        if @giftbox.save
            render json: @giftbox
        else
            render error: { error: 'Unable to create user.' }, status: 400
        end
    end

    def update
        if @user
            @user.update(user_params)
            render json: { message: 'User successfully updated.' }, status: 200
        else
            render json: { error: 'Unable to update user.' }, status: 400
        end
    end



    def destroy
        if @user
            @user.destroy
            render json: { message: 'User successfully deleted.' }, status: 200
        else
            render json: { error: 'Unable to delete user.' }, status: 400
        end
    end

    private

    def users_params
        params.require(:user).permit(user_ids: [])
    end

    def find_book
        @user = User.find(params[:id])
    end
end