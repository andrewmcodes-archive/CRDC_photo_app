# == Schema Information
#
# Table name: payments
#
#  id         :integer          not null, primary key
#  email      :string
#  token      :string
#  user_id    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
