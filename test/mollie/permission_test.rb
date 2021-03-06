require 'helper'

module Mollie
  class PermissionTest < Test::Unit::TestCase
    def test_setting_attributes
      attributes = {
        id:          'payments.read',
        description: 'View your payments',
        granted:     true
      }

      permission = Permission.new(attributes)

      assert_equal 'payments.read', permission.id
      assert_equal 'View your payments', permission.description
      assert_equal true, permission.granted
    end
  end
end
