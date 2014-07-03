class BottleNumber

  def initialize(number)
    @number = number
  end

  def container
    number == 1 ? "bottle" : "bottles"
  end

  def pronoun
    number == 1 ? "it" : "one"
  end

  def action
    number == 0 ? "Go to the store and buy some more" : "Take #{pronoun} down and pass it around"
  end

  def next
    number == 0 ? 99 : number-1
  end

  def quantity
    number == 0 ? "no more" : number.to_s
  end

  private

  def number
    @number
  end
end
