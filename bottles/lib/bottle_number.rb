class BottleNumber

  def self.get_bottle_for(num)
    num_class = num <= 1 ? num : ''

    Kernel.const_get("BottleNumber#{num_class}").new(num)
  end

  def initialize(number)
    @number = number
  end

  def container
    "bottles"
  end

  def pronoun
    "one"
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def next
    number-1
  end

  def quantity
    number.to_s
  end

  private

  attr_reader :number

end

class BottleNumber0 < BottleNumber

  def action
    "Go to the store and buy some more"
  end

  def next
    99
  end

  def quantity
    "no more"
  end
end

class BottleNumber1 < BottleNumber

  def container
    "bottle"
  end

  def pronoun
    "it"
  end
end
