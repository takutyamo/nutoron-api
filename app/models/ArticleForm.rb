class ArticleForm
include ActiveModel::Model
    attr_accessor :limit, :page

    validates :limit, numericality: { only_integer: true, allow_nil: true}
    validates :page, numericality: { only_integer: true, allow_nil: true}
    validate :limit_is_nil
    validate :page_is_nil

    def initialize(limit = nil,page = nil)
        @page = page
        @limit = limit
    end

    private
    def limit_is_nil
        errors.add :base,'limitでエラー'
    end

    def page_is_nil
        errors.add :base,'pageでエラー'
    end
end