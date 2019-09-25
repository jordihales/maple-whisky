Rails.application.routes.draw do
  mount Spina::Engine => '/'
  root to: 'pages#index'
end
