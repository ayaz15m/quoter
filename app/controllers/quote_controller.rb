class QuoteController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def search
    search = params[:body].strip

    if search.length > 0
      @search = Quote.all.where("body ILIKE ?", "%#{search}%")
    else
      redirect_to root_path
    end
  end

end
