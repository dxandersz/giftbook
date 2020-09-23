class Api::V1::GiftboxesController < ApplicationController

    private

    def giftbox_params
        params.require(:giftbox).permit(giftbox_ids: [])
    end
end
