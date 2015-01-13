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

require 'rails_helper'

RSpec.describe Comment, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
