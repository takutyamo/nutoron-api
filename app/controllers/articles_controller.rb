class ArticlesController < ApplicationController

    def index
        limit = "あ"
        page = 1
        form = ArticleForm.new(limit,page)
        #バリデーションはsave時に判定されるが、validは任意のタイミングでバリデーションを判定
        # puts form.errors.messages
        articles = Article.all
        render json: {articles: articles,form: form}, status: :ok
    end

    def render_200
        articles = Article.all
        render json:{status: 200,articles: articles}
    end

    def render_400(form)
        render json:{status: 400,error_params: form.errors}
    end

    def offli 
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

