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
    next_bottle_number = current_bottle_number - 1
    case current_bottle_number
    when 0
      "No more bottles of beer on the wall, #{bottles_left(current_bottle_number)} bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{current_bottle_number} #{container(current_bottle_number)} of beer on the wall, #{current_bottle_number} #{container(current_bottle_number)} of beer.\nTake #{pronoun(current_bottle_number)} down and pass it around, #{bottles_left(next_bottle_number)} #{container(next_bottle_number)} of beer on the wall.\n"
    end
  end

  private

  def container(number_of_bottles)
    number_of_bottles == 1 ? "bottle" : "bottles"
  end

  def pronoun(remaining_beers)
    remaining_beers == 1 ? "it" : "one"
  end

  def bottles_left(current_bottle)
    current_bottle < 1 ? "no more" : current_bottle
  end
end
