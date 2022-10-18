module Api
  module V1
    class ProductsController < ApplicationController
      # DELETE /api/v1/products/:id
      def destroy
        product = Product.find(params[:id])
        return unless product

        product.delete
        Order.joins(:line_items)
             .where(product_id: product.id)
             .each(&:recalculate_price!)

        render json: product, status: :created
      end
    end
  end
end
