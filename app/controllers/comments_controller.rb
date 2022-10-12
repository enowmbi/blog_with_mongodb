class CommentsController < ApplicationController
  def create
    article = Article.find(params[:article_id])
    comment = Comment.new(body: params[:comment][:body])
    article.comments << comment
    new_comments_count = article.total_comments + 1
    article.update(total_comments: new_comments_count)
    redirect_to(root_path)
  end
end
