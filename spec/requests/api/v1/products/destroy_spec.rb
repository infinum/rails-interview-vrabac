describe 'Destroy a product' do
  it 'deletes a product' do
    # @problem
    # use local variable instead of instance variable
    # @solution
    # replace instance variable with local variable
    @product = Product.create(title: 'shoe', code: 'sh')

    # @problem
    # wrong HTTP verb
    # @solution
    # change get to delete
    get "/api/v1/products/#{@product.id}"

    # @problem
    # wrong HTTP status code
    # @solution
    # change to HTTP status code No Content
    # @problem
    # test case isn't checking if product is actually deleted
    # @solution
    # check if total number of products decreased by 1
    expect(response).to have_http_status_code(:created)
  end
end
