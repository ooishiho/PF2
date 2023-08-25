Rails.application.routes.draw do
  devise_for :admins,skip: [:registrations,:passwords], controllers: {
  sessions: "admin/sessions"
}
  devise_for :customers,skip: [:passwords],controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  get '/' => 'homes#top'
  get 'about' => 'homes#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
