module Mollie
  class Amount < Base
    attr_accessor :value, :currency

    def initialize(attributes)
      super unless attributes.nil?
    end

    def value=(val)
      @value = BigDecimal.new(val.to_s)
    end
  end
end
