class Admins::BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book Record successfully created."
      redirect_to :back
    else
      flash[:alert] = "Error while creating book record."
      redirect_to :back
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      flash[:notice] = "Book Record successfully created."
      redirect_to book_path(@book)
    else
      flash[:alert] = "Error while creating book record."
      redirect_to :back
    end
  end

  private

  def book_params
    params.require(:book).permit(
      :title, :author, :summary, :link_to_amazon_com, :link_to_amazon_in,
      :main_image_link, :youtube_audiobook_link, :youtube_animated_review_link
    )
  end

end
