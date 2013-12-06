require 'test_helper'

class TestObjsControllerTest < ActionDispatch::IntegrationTest
  fixtures :all

  #instead of loading individual partials, attempt to render the entire collection with and without variants
  test "renders without variant" do
    get test_objs_path
    assert_response :success
    assert_select ".default_template", :count=> expected_render_count
  end

  test "renders with variant" do
    test_variants.each do |name|
      get test_objs_path(:variant => name)
      assert_response :success
      assert_select ".#{name}_template", :count=> expected_render_count
    end
  end
end
