require 'test_helper'

class Public::ScrapsControllerTest < ActionController::TestCase
  setup do
    @scrap = scraps(:simple_note)
  end

  test 'should get show' do
    get :show, slug: @scrap.slug
    assert_response :success
  end
end
