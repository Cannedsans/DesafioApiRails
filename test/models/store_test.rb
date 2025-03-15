require "test_helper"

class StoreTest < ActiveSupport::TestCase
  test "Cria uma loja" do
    loja = Store.new(name:"dummy", description: "dummy",cnpj:"dummy")
    assert_not !loja.valid?
  end
end
