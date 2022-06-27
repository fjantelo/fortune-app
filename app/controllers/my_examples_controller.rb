class MyExamplesController < ApplicationController
  def fortune
    message = ["You will have a great day", "You will have an okay day", "Better luck next time"]
    render json: { random_fortune: message[rand(0..2)] }
  end

  def numbers
    lotto_numbers = [rand(1..60), rand(1..60), rand(1..60), rand(1..60), rand(1..60), rand(1..60)]
    render json: { lotto_numbers: lotto_numbers }
  end

  def page_visits
    visits = 0
    render json: { page_visits: (vists = visits + 1) }
    # I think this doesn't work because the method gets called each page visit, which resets visits to 0
  end

  def bottles_of_beer
    bottles = 99
    line = []

    while bottles > 1
      line << "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
      bottles -= 1
      if bottles > 1
        line << "Take one down and pass it around, #{bottles} bottles of beer on the wall."
      elsif bottles == 1
        line << "Take one down and pass it around, #{bottles} bottle of beer on the wall."
      end
    end

    line << "#{bottles} bottle of beer on the wall, #{bottles} bottle of beer."
    line << "Take one down and pass it around, no more bottles of beer on the wall."
    line << "No more bottles of beer on the wall, no more bottles of beer."
    line << "Go to the store and buy some more, 99 bottles of beer on the wall."

    index = 0
    render json: { song: line }
  end
end
