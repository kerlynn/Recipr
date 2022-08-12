require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test "create" do

    params = { title: 'Chicken Pot Pie', content: 'This Chicken Pot Pie recipe is made by poaching uncooked chicken in stock and milk which is then used as the broth for the creamy filling.' }.to_json

    post("/recipes/new/", headers: headers, params: params)

      assert_response :success
    assert true
  end
end
