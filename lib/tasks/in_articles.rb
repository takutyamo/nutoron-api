class InArticles
    def self.article
        puts 'in article'
        count = Article.all.length
        for num in count..count+12 do
            article = Article.new(title:'article'+num.to_s)
            article.save
        end
    end
end

InArticles.article