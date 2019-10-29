Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  get '/movies/similar/:id', to: 'movies#find_similar_movies', as: :similar_movies
end
