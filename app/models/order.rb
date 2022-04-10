# == Schema Information
#
# Table name: orders
#
#  id                :integer          not null, primary key
#  total_price_cents :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Order < ApplicationRecord
end
