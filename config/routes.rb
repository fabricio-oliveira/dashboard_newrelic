Rails.application.routes.draw do
  mount Dashing::Engine, at: Dashing.config.engine_path
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
