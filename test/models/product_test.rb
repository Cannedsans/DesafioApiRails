require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "Testa inserção de produto" do
    produto = Product.new(name: "Alfarn", price: 400.0, description:"Lugar para desconaçar e trocar informações",image_url: "https://m.media-amazon.com/images/I/61BDn6I7QlL.jpg" )

    assert_not !produto.valid?
  end
end
