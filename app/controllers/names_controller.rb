class NamesController < ApplicationController

  def name_cap_method
    input_name = params["my_name"]
    ouput_name = input_name.upcase
    
    if ouput_name[0] == "A"
      ouput_name = "Hey, your name starts with the first letter of the alphabet!"
    end
    render json: {message: ouput_name}
  end

  def guess_num_method
    correct_number = 36
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
