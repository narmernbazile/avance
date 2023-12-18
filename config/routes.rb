Rails.application.routes.draw do
  root 'avance_app#index'

  get 'avance_app' => 'avance_app#index'
  get '/' => 'avance_app#index'
  post '/' => 'avance_app#handlePost'

  
end
