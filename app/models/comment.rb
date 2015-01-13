# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :string           not null
#  owner_id   :integer          not null
#  owner_type :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  include Commentable
  validates :content, :owner_id, :owner_type, presence: true

  belongs_to :owner, polymorphic: true
end
