Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "recipes#index"

  scope controller: 'recipes' , path: 'recipes' do
    get '/all'                           => :get
    get '/'                              => :show
    post '/new'                          => :create
  end

end
