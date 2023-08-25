Rails.application.routes.draw do
  devise_for :admins,skip: [:registrations,:passwords], controllers: {
  sessions: "admin/sessions"
}

 root to: "public/homes#top"

  devise_for :customers,skip: [:passwords],controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  get '/home/about' => 'public/homes#about', as: 'about'
  get '/admin' => 'admin/homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
