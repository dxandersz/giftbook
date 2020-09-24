class Api::V1::BooksController < ApplicationController

    def index
        @books = Book.all
        render json: @books
    end

    def show
        @book = Book.find(params[:id])
        render json: @book
    end

    def create
        @book = Book.new(book_params)

        if @book.save
            render json: @book
        else
            render error: { error: 'Unable to create book.' }, status: 400
        end
    end

    def update
        if @book
            @book.update(book_params)
            render json: { message: 'Book successfully updated.' }, status: 200
        else
            render json: { error: 'Unable to update book.' }, status: 400
        end
    end



    def destroy
        if @book
            @book.destroy
            render json: { message: 'Book successfully deleted.' }, status: 200
        else
            render json: { error: 'Unable to delete book.' }, status: 400
        end
    end

    private

    def books_params
        params.require(:book).permit(book_ids: [])
    end

    def find_book
        @book = Book.find(params[:id])
    end
end
