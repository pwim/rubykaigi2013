RubyKaigi2013::Application.routes.draw do
  get "pages/accommodation"

  scope '2013' do
    root to: 'top#show'
    get 'accommodation' => 'pages#accommodation'
    resources :talks, only: %w[index show]
  end
end
