Sbds::Engine.routes.draw do
  resources :core_blocks, only: [:index, :show]
end
