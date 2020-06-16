Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "pages#home"
  

  resources :tags do 
    resources :posts
  end

end


# 1. should i be able to create a child without knowing the parent? 
# 2. if yes, how do i select parent

# 3. how should the app flow do i want this 

# go to tag show page => then click on create post => then create post(carry the tag id with us)

# OR 

# select tag from new post form
