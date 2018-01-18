Rails.application.routes.draw do
  get "/name_in_caps_url" => 'names#name_cap_method'
  get "/guess_number_url" => 'names#guess_num_method'
end
