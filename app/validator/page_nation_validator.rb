class PageNationValidator
    include ActiveModel::Validations
    attr_accessor :limit, :page, :offset

    validates :limit, numericality: { only_integer: true }
    validates :page, numericality: { only_integer: true }

    validate :off

    def initialize(page,limit)
        @limit = limit
        @page = page
        @offset = 1
    end

    def off
        errors.add(:base,'offset error')
    end

end