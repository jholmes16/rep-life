class PagesController < ApplicationController
    
    def home
      # redirect_to articles_path if logged_in?
      @categories = Category.paginate(page: params[:page], per_page: 5)
    end

    def about
    end

    private

    def category_params
      params.require(:category).permit(:name)
    end
end
