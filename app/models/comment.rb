# frozen_string_literal: true

class Comment
  include Mongoid::Document

  field :body, type: String

  embedded_in :article
end
