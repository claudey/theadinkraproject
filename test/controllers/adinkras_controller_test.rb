require 'test_helper'

class AdinkrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adinkra = adinkras(:one)
  end

  test "should get index" do
    get adinkras_url
    assert_response :success
  end

  test "should get new" do
    get new_adinkra_url
    assert_response :success
  end

  test "should create adinkra" do
    assert_difference('Adinkra.count') do
      post adinkras_url, params: { adinkra: { icon_png: @adinkra.icon_png, icon_svg: @adinkra.icon_svg, meaning: @adinkra.meaning, name: @adinkra.name, origin: @adinkra.origin, proverb: @adinkra.proverb, theme: @adinkra.theme, translation: @adinkra.translation } }
    end

    assert_redirected_to adinkra_url(Adinkra.last)
  end

  test "should show adinkra" do
    get adinkra_url(@adinkra)
    assert_response :success
  end

  test "should get edit" do
    get edit_adinkra_url(@adinkra)
    assert_response :success
  end

  test "should update adinkra" do
    patch adinkra_url(@adinkra), params: { adinkra: { icon_png: @adinkra.icon_png, icon_svg: @adinkra.icon_svg, meaning: @adinkra.meaning, name: @adinkra.name, origin: @adinkra.origin, proverb: @adinkra.proverb, theme: @adinkra.theme, translation: @adinkra.translation } }
    assert_redirected_to adinkra_url(@adinkra)
  end

  test "should destroy adinkra" do
    assert_difference('Adinkra.count', -1) do
      delete adinkra_url(@adinkra)
    end

    assert_redirected_to adinkras_url
  end
end
