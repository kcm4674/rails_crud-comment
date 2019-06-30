Rails.application.routes.draw do
  root 'posts#index' # 주의 : controller(posts)와 view(index) 사이 구분은 #로 표기 (/로 하면 안됩니다!)
  
  get 'posts/index'
  get 'posts/show'
  get 'posts/new'
  get 'posts/edit'
  get 'posts/create'
  get 'posts/update'
  get 'posts/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
