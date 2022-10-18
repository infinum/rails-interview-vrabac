# == Schema Information
#
# Table name: products
#
#  id               :integer          not null, primary key
#  code             :string           not null
#  title            :string           not null
#  unit_price_cents :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_products_on_code  (code) UNIQUE
#
class Product < ApplicationRecord
  has_one :line_items
end
