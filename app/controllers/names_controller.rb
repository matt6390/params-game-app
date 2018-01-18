class NamesController < ApplicationController

  def name_cap_method
    input_name = params["my_name"]
    name_upcase = input_name.upcase
    
    if name_upcase[0] == "A"     #or i could have used namne_upcase.start_with? == "A", or          name_upcase.first = "A"
      name_upcase = "Hey, your name starts with the first letter of the alphabet!"
    end
    render json: {your_name: name_upcase}
  end

  def guess_num_method
    correct_number = 42
    input_number = params["my_guess"].to_i

    if input_number > correct_number
      render json: {message: "You are incorrect, please enter a lower number"}
    elsif input_number < correct_number
      render json: {message: "You are incorrect, please enter a higher number"}
    else
    render json: {message: "Congrats, you guessed the correct number"}
    end
  end

end
