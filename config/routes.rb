Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #    URI                    controller | function shortcut
  #Todas as rotas a seguir serão resumidas em uma única rota
  #get("/blog_posts/new", to: "blog_posts#new", as: :new_blog_post) 
  #get("/blog_posts/:id", to: "blog_posts#show", as: :blog_post)
  #patch("/blog_posts/:id", to: "blog_posts#update")
  #delete("blog_posts/:id", to: "blog_posts#destroy")
  #get("blog_posts/:id/edit", to: "blog_posts#edit", as: :edit_blog_post)
  #post("blog_posts", to: "blog_posts#create", as: :blog_posts)

  resources(:blog_posts)

  
  # Defines the root path route ("/")
  root "blog_posts#index"
end
