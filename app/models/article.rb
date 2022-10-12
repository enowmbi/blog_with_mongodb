class Article
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :body, type: String
  field :total_comments, type: Integer
  field :tags, type: Array, default: []
  field :categories, type: Array, default: []

  embeds_many :comments
end
