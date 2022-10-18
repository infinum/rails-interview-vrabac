describe 'Destroy a product' do
  it 'deletes a product' do
    @product = Product.create(title: 'shoe', code: 'sh')

    get "/api/v1/products/#{@product.id}"

    expect(response).to have_http_status_code(:created)
  end
end
