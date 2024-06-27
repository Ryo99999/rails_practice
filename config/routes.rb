Rails.application.routes.draw do
  get 'static_pseg/home'
  get 'static_pseg/help'
  root 'application#hello'
end
