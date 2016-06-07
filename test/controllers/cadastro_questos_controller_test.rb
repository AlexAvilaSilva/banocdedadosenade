require 'test_helper'

class CadastroQuestosControllerTest < ActionController::TestCase
  setup do
    @cadastro_questo = cadastro_questos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cadastro_questos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cadastro_questo" do
    assert_difference('CadastroQuesto.count') do
      post :create, cadastro_questo: { correta: @cadastro_questo.correta, disciplina: @cadastro_questo.disciplina, enunciado: @cadastro_questo.enunciado, resposta1: @cadastro_questo.resposta1, resposta2: @cadastro_questo.resposta2, resposta3: @cadastro_questo.resposta3, resposta4: @cadastro_questo.resposta4, resposta5: @cadastro_questo.resposta5, titulo: @cadastro_questo.titulo }
    end

    assert_redirected_to cadastro_questo_path(assigns(:cadastro_questo))
  end

  test "should show cadastro_questo" do
    get :show, id: @cadastro_questo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cadastro_questo
    assert_response :success
  end

  test "should update cadastro_questo" do
    patch :update, id: @cadastro_questo, cadastro_questo: { correta: @cadastro_questo.correta, disciplina: @cadastro_questo.disciplina, enunciado: @cadastro_questo.enunciado, resposta1: @cadastro_questo.resposta1, resposta2: @cadastro_questo.resposta2, resposta3: @cadastro_questo.resposta3, resposta4: @cadastro_questo.resposta4, resposta5: @cadastro_questo.resposta5, titulo: @cadastro_questo.titulo }
    assert_redirected_to cadastro_questo_path(assigns(:cadastro_questo))
  end

  test "should destroy cadastro_questo" do
    assert_difference('CadastroQuesto.count', -1) do
      delete :destroy, id: @cadastro_questo
    end

    assert_redirected_to cadastro_questos_path
  end
end
