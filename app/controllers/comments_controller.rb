class CommentsController < ApplicationController
  
  ## [METHOD : POST 방식 / post_comments_path] http://(홈페이지 루트주소)/posts/:post_id/comments
  def create
    Comment.create(post_id: params[:post_id], body: params[:comment_body]) ## post_id는 주소에서 :post_id 를 통해 알아냅니다.
    redirect_to request.referrer ## 이 전 페이지로 이동
  end

  ## [METHOD : DELETE 방식 / post_comment_path] http://(홈페이지 루트주소)/posts/:post_id/comments/:id
  def destroy
    @post = Post.find(params[:post_id]) ## post_id는 주소에서 :post_id 를 통해 알아냅니다.
    @comment = @post.comments ## 해당 Post에 종속된 모든 Comment 데이터들을 불러옴.
    @comment.find(params[:id]).destroy ## 특정 댓글의 ID값을 찾아내서 삭제
    redirect_to request.referrer ## 이 전 페이지로 이동
  end
end
