class ReadersController < ApplicationController
  def index
    @readers = Reader.all
  end

  def show
    @reader = Reader.find(params[:id])
    @books_read = Read.where(reader: params[:id])
  end
end
