module Api
  module V1
    class ProductsController < ApplicationController
      # DELETE /api/v1/products/:id
      def destroy
        # @problem
        # hard delete isn't appropriate approach for the objective
        # @solution
        # suggest soft delete instead
        product = Product.find(params[:id])
        # @problem
        # unnecessary check, find would raise an error
        # @solution
        # remove
        return unless product

        product.delete
        # @problem
        # order is updated for each line item
        # @solution
        # group by order id
        Order.joins(:line_items)
             .where(product_id: product.id)
             .each(&:recalculate_price!)

        # @problem
        # wrong HTTP status code
        # @solution
        # change to No Content
        render json: product, status: :created
      end
    end
  end
end
