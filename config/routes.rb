Rails.application.routes.draw do 
  match '*path', via: [:options], to: lambda {|_| [204, { 'Content-Type' => 'text/plain' }]}
  root to: 'site#index'
  namespace :api do 
    namespace :v1 do 
      resources :pieces, only: [:index, :create, :destroy, :update] 
    end 
  end 
end
  
