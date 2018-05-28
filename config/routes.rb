  Rails.application.routes.draw do
    scope '/api' do
      resources :recipes
      get '/search' => 'recipes#search'
      get '/quote' => 'quotes#quote_hit'
      delete '/favorites' => 'favorites#destroy'
      resources :favorites, only: [:create, :index, :destroy]

      # get '/user/:id' => 'users#show'

      devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
      }
      resources :nutritions
      resources :foods
      resources :users, only: [:show, :edit, :update]
      get '/user/:id' => 'users#show'
    end
    root to: 'home#index'
    get '/:thing/(:thing)' => 'home#index'

    # Need to leave get/:thing as last line of code so that front end can use react to redirect where needed
    # If you need to delete a favorite => DELETE api/favorites
    # For a user to save a recipes to their favorites send a post here => POST  /api/favorites , also send user_token, user_email(login authentication) and also the food id number
    # Send user updates to this endpoint =>  PATCH /api/users/:id
    # Pulls all recipes saved in our database == > GET /api/recipes
    # Shows the current user their favorited recipes == > GET /api/favorites please send the user_token and user_email(login authentication)
    # For getting nutrions, send request to == > GET /api/nutritions
    # To login the the end point will be  ==> POST to /api /users/sign_in
    # If you want to sign_up the end point will be ==>  POST to /api/users
    # If you need to reset password send request to this end point ==> /api/users/password/new
    # If you would like to see a preview of the email that is sent in sign_up go here: /rails/mailers
    # here is the endpoint for making api calls for generating a random quote ==> http://localhost:5000/api/quote/?method=getQuote&format=json&lang=en

    # *******************Below are there rails routes, just a quick reference ***************

  #                   Prefix Verb   URI Pattern                        Controller#Action
  #                  recipes GET    /api/recipes(.:format)             recipes#index
  #                          POST   /api/recipes(.:format)             recipes#create
  #               new_recipe GET    /api/recipes/new(.:format)         recipes#new
  #              edit_recipe GET    /api/recipes/:id/edit(.:format)    recipes#edit
  #                   recipe GET    /api/recipes/:id(.:format)         recipes#show
  #                          PATCH  /api/recipes/:id(.:format)         recipes#update
  #                          PUT    /api/recipes/:id(.:format)         recipes#update
  #                          DELETE /api/recipes/:id(.:format)         recipes#destroy
  #                   search GET    /api/search(.:format)              recipes#search
  #                    quote GET    /api/quote(.:format)               quotes#quote_hit
  #                favorites POST   /api/favorites(.:format)           favorites#create
  #         new_user_session GET    /api/users/sign_in(.:format)       users/sessions#new
  #             user_session POST   /api/users/sign_in(.:format)       users/sessions#create
  #     destroy_user_session DELETE /api/users/sign_out(.:format)      users/sessions#destroy
  #            user_password POST   /api/users/password(.:format)      devise/passwords#create
  #        new_user_password GET    /api/users/password/new(.:format)  devise/passwords#new
  #       edit_user_password GET    /api/users/password/edit(.:format) devise/passwords#edit
  #                          PATCH  /api/users/password(.:format)      devise/passwords#update
  #                          PUT    /api/users/password(.:format)      devise/passwords#update
  # cancel_user_registration GET    /api/users/cancel(.:format)        users/registrations#cancel
  #        user_registration POST   /api/users(.:format)               users/registrations#create
  #    new_user_registration GET    /api/users/sign_up(.:format)       users/registrations#new
  #   edit_user_registration GET    /api/users/edit(.:format)          users/registrations#edit
  #                          PATCH  /api/users(.:format)               users/registrations#update
  #                          PUT    /api/users(.:format)               users/registrations#update
  #                          DELETE /api/users(.:format)               users/registrations#destroy
  #               nutritions GET    /api/nutritions(.:format)          nutritions#index
  #                          POST   /api/nutritions(.:format)          nutritions#create
  #            new_nutrition GET    /api/nutritions/new(.:format)      nutritions#new
  #           edit_nutrition GET    /api/nutritions/:id/edit(.:format) nutritions#edit
  #                nutrition GET    /api/nutritions/:id(.:format)      nutritions#show
  #                          PATCH  /api/nutritions/:id(.:format)      nutritions#update
  #                          PUT    /api/nutritions/:id(.:format)      nutritions#update
  #                          DELETE /api/nutritions/:id(.:format)      nutritions#destroy
  #                    foods GET    /api/foods(.:format)               foods#index
  #                          POST   /api/foods(.:format)               foods#create
  #                 new_food GET    /api/foods/new(.:format)           foods#new
  #                edit_food GET    /api/foods/:id/edit(.:format)      foods#edit
  #                     food GET    /api/foods/:id(.:format)           foods#show
  #                          PATCH  /api/foods/:id(.:format)           foods#update
  #                          PUT    /api/foods/:id(.:format)           foods#update
  #                          DELETE /api/foods/:id(.:format)           foods#destroy
  #                edit_user GET    /api/users/:id/edit(.:format)      users#edit
  #                     user GET    /api/users/:id(.:format)           users#show
  #                          PATCH  /api/users/:id(.:format)           users#update
  #                          PUT    /api/users/:id(.:format)           users#update
  #                          GET    /api/user/:id(.:format)            users#show
  #                     root GET    /                                  home#index
  #                          GET    /:thing(.:format)                  home#index

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
