class PostsController < ApplicationController
  def index
    @posts = Post.all
    # 모든 Post 모델의 DB를 불러옴.
    # [SQL] Select * from Post = [Rails] Post.all
    # app/views/posts/index.html.erb 에서만 @posts 변수 활용 가능
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    # @post_crud = Post.new # 테이블에 새로운 한 줄 추가
    # @post_crud.title = params[:crud_title] # 새로 추가된 한 줄 => new.html.erb에서 건너온 title 입력
    # @post_crud.content = params[:crud_content] # 새로 추가된 한 줄 => new.html.erb에서 건너온 content 입력
    # @post_crud.save # 새로 추가된 한 줄 => 데이터 정보를 저장 
    Post.create(title: "#{params[:crud_title]}", content: params[:crud_content]) # 사실 23줄에 적힌 코드 = 19~22번 째 줄 내용들임.
    
    redirect_to "/posts/index" # 반드시 첫 페이지로 돌아가도록 해야 함, 이를 하지 않으면 DB 추가 후 create.html.erb 페이지에서 가만히 머물게 됨.
  end

  def update
  end

  def destroy
  end
end
