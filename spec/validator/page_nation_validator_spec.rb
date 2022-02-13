require 'rails_helper'

RSpec.describe ArticleForm, type: :model do
    it 'valid' do
        form = ArticleForm.new(1,1)
        expect(form).to be_valid
    end
end