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
  # @problem
  # line items association is missing
  # @solution
  # add has_many line items association

  private

  # @problem
  # wrong access modifier for the method
  # @solution
  # change access modifier to public
  def recalculate_price!
    update_columns!(total_price_cents: line_items.sum(&:price_cents))
  end
end
