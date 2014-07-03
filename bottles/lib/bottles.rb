# Feel free to delete the instructions once you get going
puts instructions(__FILE__)

class Bottles
  def song
    verses(99,0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |bottle_number| verse(bottle_number) }.join("\n")
  end

  def verse(current_bottle_number)
    next_bottle_number = next_bottle_number(current_bottle_number)

    "#{quantity(current_bottle_number).capitalize} #{container(current_bottle_number)} of beer on the wall, #{quantity(current_bottle_number)} #{container(current_bottle_number)} of beer.\n#{action(current_bottle_number)}, #{quantity(next_bottle_number)} #{container(next_bottle_number)} of beer on the wall.\n"

  end

  private

  def container(number_of_bottles)
    number_of_bottles == 1 ? "bottle" : "bottles"
  end

  def pronoun(number_of_bottles)
    number_of_bottles == 1 ? "it" : "one"
  end

  def quantity(number_of_bottles)
    number_of_bottles == 0 ? "no more" : number_of_bottles.to_s
  end

  def action(number_of_bottles)
    number_of_bottles == 0 ? "Go to the store and buy some more" : "Take #{pronoun(number_of_bottles)} down and pass it around"
  end

  def next_bottle_number(number_of_bottles)
    number_of_bottles == 0 ? 99 : number_of_bottles-1
  end
end
