# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'articles/show', type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
                                  title: 'Title',
                                  body: 'MyText',
                                  total_comments: 2
                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
