class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    render json: @articles
  end

  def create
    article = Article.new({ title: params[:title], markdown: params[:markdown], public: params[:public] })
    if article.save
      params[:categories].each { |category|
        cat = Category.where(name: category)
        if cat.count >= 1
          p category
          art_cat = ArticleCategory.new(article_id: article.id, category_id: cat[0].id)
          art_cat.save()
        else
          new_cat = Category.new(name: category)
          if new_cat.save
            art_cat = ArticleCategory.new(article_id: article.id, category_id: new_cat.id)
            art_cat.save()
          end
        end

      }
      render json: { status: "SUCCESS" }
    else
      render json: { status: "ERROR", data: article.errors }
    end

  end

  def show
    puts 'show'
    render json: {}
  end
end
