class Api::V1::BooksController < ApplicationController

    private
    
    def books_params
        params.require(:book).permit(book_ids: [])
    end
end
