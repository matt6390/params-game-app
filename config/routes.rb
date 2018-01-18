Rails.application.routes.draw do
  get "/name_in_caps_url/:my_name" => 'names#name_cap_method'
  get "/guess_number_url/:my_guess" => 'names#guess_num_method'
end
