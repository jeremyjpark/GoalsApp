module Commentable
  extend ActiveSupport::Concern

  included do
    has_many :comments, as: :owner, dependent: :destroy
  end
end
