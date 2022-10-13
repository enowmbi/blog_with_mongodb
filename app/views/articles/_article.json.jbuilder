# frozen_string_literal: true

json.extract! article, :id, :title, :body, :total_comments, :created_at, :updated_at, :comments
json.url article_url(article, format: :json)
