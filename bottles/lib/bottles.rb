# Feel free to delete the instructions once you get going
puts instructions(__FILE__)

class Bottles

  def verse(bottle_number)
    current_bottle_number = bottle_number
    next_bottle_number = bottle_number-1
    case current_bottle_number
    when 0
%{No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
}
      when 1
%Q{1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
}

      when 2
    %Q{#{current_bottle_number} bottles of beer on the wall, #{current_bottle_number} bottles of beer.
Take one down and pass it around, #{next_bottle_number} bottle of beer on the wall.
}
    else
    %Q{#{current_bottle_number} bottles of beer on the wall, #{current_bottle_number} bottles of beer.
Take one down and pass it around, #{next_bottle_number} bottles of beer on the wall.
}
    end
  end

  def verses(upper, lower)
    (lower..upper).to_a.reverse.map do |bottle_number|
      verse(bottle_number)
    end.join("\n")
  end

  def song
    verses(99,0)
  end
end
