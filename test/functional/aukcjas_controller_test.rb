require 'test_helper'

class AukcjasControllerTest < ActionController::TestCase
  setup do
    @aukcja = aukcjas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aukcjas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aukcja" do
    assert_difference('Aukcja.count') do
      post :create, aukcja: { budzet: @aukcja.budzet, nazwa: @aukcja.nazwa, opis: @aukcja.opis, termin: @aukcja.termin }
    end

    assert_redirected_to aukcja_path(assigns(:aukcja))
  end

  test "should show aukcja" do
    get :show, id: @aukcja
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aukcja
    assert_response :success
  end

  test "should update aukcja" do
    put :update, id: @aukcja, aukcja: { budzet: @aukcja.budzet, nazwa: @aukcja.nazwa, opis: @aukcja.opis, termin: @aukcja.termin }
    assert_redirected_to aukcja_path(assigns(:aukcja))
  end

  test "should destroy aukcja" do
    assert_difference('Aukcja.count', -1) do
      delete :destroy, id: @aukcja
    end

    assert_redirected_to aukcjas_path
  end
end
