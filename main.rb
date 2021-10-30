class OutOfRangeError < StandardError; end

class Main
  TIERS = [{
      prc: 51,
      start: 0,
      end: 15
    }, {
      prc: 41,
      start: 15,
      end: 30
    }, {
      prc: 31,
      start: 30,
      end: 50
    }, {
      prc: 21,
      start: 50,
      end: 999999
    }]

  private

  attr_reader :base_price

  def initialize(base_price)
    @base_price = base_price
  end

  def calculate_diff
    TIERS.sum do |tier|
      if base_price > tier[:end]
        diff = tier[:end] - tier[:start]
      else
        diff = (base_price - tier[:start] > 0) ? base_price - tier[:start] : 0
      end

      ((diff.to_f * tier[:prc]) / 100)
    end
  end

  public

  def calculate
    raise OutOfRangeError, 'Out of range' if base_price > TIERS.last[:end]
    (base_price + calculate_diff).round(2)
  end
end
