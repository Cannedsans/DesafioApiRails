require "test_helper"

class StockItemTest < ActiveSupport::TestCase
  test "criar um item de estoque válido" do
    # Cria um produto válido
    produto = Product.new(
      name: "Alfarn",
      price: 400.0,
      description: "Lugar para descansar e trocar informações",
      image_url: "https://m.media-amazon.com/images/I/61BDn6I7QlL.jpg"
    )
    assert produto.valid?, "Produto deve ser válido"

    # Cria uma loja válida
    loja = Store.new(
      name: "dummy",
      description: "dummy",
      cnpj: "dummy"
    )
    assert loja.valid?, "Loja deve ser válida"

    # Cria um item de estoque válido
    quantidade = StockItem.new(
      product: produto,
      store: loja,
      quantity: 200
    )

    # Verifica se o item de estoque é válido
    assert quantidade.valid?, "Item de estoque deve ser válido"
  end
end
