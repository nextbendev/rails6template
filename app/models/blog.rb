class Blog < ApplicationRecord
  belongs_to :category
  default_scope { order(created_at: :desc)}
end
