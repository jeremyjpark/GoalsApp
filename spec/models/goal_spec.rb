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
#  completed  :boolean          default("f"), not null
#

require 'rails_helper'

RSpec.describe Goal, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
