class FortunesController < ApplicationController
  
  def horoscopes
    zodiac = params.fetch("the_sign")

    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(zodiac.to_sym)
    @horoscope = this_zodiac.fetch(:horoscope)
    @name = this_zodiac.fetch(:name)

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "horoscope_templates/all_zodiacs"})
  end
end