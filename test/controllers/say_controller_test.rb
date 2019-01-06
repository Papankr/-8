# frozen_string_literal: true

require 'test_helper'

class SayControllerTest < ActionDispatch::IntegrationTest
  test 'should get hello' do
    get say_hello_url
    assert_response :success
  end

  test 'should get goodbye' do
    get say_goodbye_url
    assert_response :success
  end
  test 'should get 5  36 25' do
    get say_goodbye_url, params: { v1: ' 5  36 25' }
    assert_equal assigns[:result], [[36, 25]]
  end
  test 'should get 5 36 25 2 4 4 4' do
    get say_goodbye_url, params: { v1: '5 36 25 2 4 4 4' }
    assert_equal assigns[:result], [[36, 25], [4, 4, 4]]
  end
  test 'should get []' do
    get say_goodbye_url, params: { v1: '0' }
    assert_equal assigns[:result], [[0]]
  end
end
