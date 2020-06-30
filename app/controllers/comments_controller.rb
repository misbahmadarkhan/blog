class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comments = @article.comments.create(comment_params)
        @comments.save
        redirect_to @article
    end

    private def comment_params
        params[:comment].permit(:commenter, :body)
    end 
end
