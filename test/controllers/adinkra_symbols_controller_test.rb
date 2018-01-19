require 'test_helper'

class AdinkraSymbolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adinkra_symbol = adinkra_symbols(:one)
  end

  test "should get index" do
    get adinkra_symbols_url
    assert_response :success
  end

  test "should get new" do
    get new_adinkra_symbol_url
    assert_response :success
  end

  test "should create adinkra_symbol" do
    assert_difference('AdinkraSymbol.count') do
      post adinkra_symbols_url, params: { adinkra_symbol: { icon_png: @adinkra_symbol.icon_png, icon_svg: @adinkra_symbol.icon_svg, meaning: @adinkra_symbol.meaning, name: @adinkra_symbol.name, origin: @adinkra_symbol.origin, proverb: @adinkra_symbol.proverb, theme: @adinkra_symbol.theme, translation: @adinkra_symbol.translation } }
    end

    assert_redirected_to adinkra_symbol_url(AdinkraSymbol.last)
  end

  test "should show adinkra_symbol" do
    get adinkra_symbol_url(@adinkra_symbol)
    assert_response :success
  end

  test "should get edit" do
    get edit_adinkra_symbol_url(@adinkra_symbol)
    assert_response :success
  end

  test "should update adinkra_symbol" do
    patch adinkra_symbol_url(@adinkra_symbol), params: { adinkra_symbol: { icon_png: @adinkra_symbol.icon_png, icon_svg: @adinkra_symbol.icon_svg, meaning: @adinkra_symbol.meaning, name: @adinkra_symbol.name, origin: @adinkra_symbol.origin, proverb: @adinkra_symbol.proverb, theme: @adinkra_symbol.theme, translation: @adinkra_symbol.translation } }
    assert_redirected_to adinkra_symbol_url(@adinkra_symbol)
  end

  test "should destroy adinkra_symbol" do
    assert_difference('AdinkraSymbol.count', -1) do
      delete adinkra_symbol_url(@adinkra_symbol)
    end

    assert_redirected_to adinkra_symbols_url
  end
end
