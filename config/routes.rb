Rails.application.routes.draw do
  root 'posts#index' # 주의 : controller(posts)와 view(index) 사이 구분은 #로 표기 (/로 하면 안됩니다!)
  
  # Post 모델 URI에 Comment URI 경로를 중첩설정 (경로 중첩을 통해 post_id와 comment_id를 둘 다 알아낼 수 있게 함.) 
  resources :posts do
    resources :comments
  end
  
  get 'posts/index'
  #          controller 이름 ↓     ↓ controller 내 액션 이름
  get 'posts/show/:id' => "posts#show"
  #                ↑ 사용자로부터 목록(index.html.erb)에서 클릭한 글에 대해 전달받고자 하는 id
  get 'posts/new'
  get 'posts/edit/:id' => "posts#edit"
  post 'posts/create' # new.html.erb에서 post 메소드로 데이터를 전달 받으므로, 따로 post라고 설정을 해줘야 합니다.
  post 'posts/update/:id' => "posts#update"
  get 'posts/destroy/:id' => "posts#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end