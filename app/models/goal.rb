# == Schema Information
#
# Table name: goals
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  title      :string           not null
#  body       :text
#  public     :boolean          default("f"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Goal < ActiveRecord::Base
  belongs_to :user

  validates :user_id, :title, presence: true
  validates :public, :completed, inclusion: [true, false]
end
