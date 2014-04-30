Rails.application.routes.draw do
  %i(homepage).each do |page|
    get controller: :pages, action: page, as: page
  end

  root to: 'pages#homepage'
end
