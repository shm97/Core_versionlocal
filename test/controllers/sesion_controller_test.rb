require "./test/test_helper"

class SesionControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def test_user

    usuario_prueba = User.new({username: users(:prueba_1).username, 
                               password: users(:prueba_1).password})


    prueba_1_copy = User.find_by(username: usuario_prueba.username)

    assert_equal usuario_prueba.username, prueba_1_copy.username

    usuario_prueba.username= "prueba_cambio_1"
 end

  
end
