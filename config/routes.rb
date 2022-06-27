Rails.application.routes.draw do
  get "/fortune", controller: "my_examples", action: "fortune"
  get "/numbers", controller: "my_examples", action: "numbers"
  get "page_visits", controller: "my_examples", action: "page_visits"
  get "/bottles_of_beer", controller: "my_examples", action: "bottles_of_beer"
end
