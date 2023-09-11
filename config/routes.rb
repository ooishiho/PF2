Rails.application.routes.draw do
  devise_for :admins,skip: [:registrations,:passwords], controllers: {
  sessions: "admin/sessions"
}

  devise_for :customers,skip: [:passwords],controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

 root to: "public/homes#top"

  get '/home/about' => 'public/homes#about', as: 'about'
  get '/admin' => 'admin/homes#top'

  namespace :admin do
      resources :items, only: [:new]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
