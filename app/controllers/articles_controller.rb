class ArticlesController < ApplicationController

    def index
        @articles = Article.all
        render json: @articles
    end

    def create
        puts 'create'
        render json: {}
    end

    def show
        puts 'show'
        render json: {}
    end
end
