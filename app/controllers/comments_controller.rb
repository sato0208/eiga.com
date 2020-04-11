class CommentsController < ApplicationController
	def new
		@movie = Movie.find(params[:movie_id])
		@new_comment = Comment.new
	end

	def create
		movie = Movie.find(params[:movie_id])
		# comment.user_idにcurrent_user.idを代入する
		# new_comment = current_user.comments.new(comment_params)
		new_comment = Comment.new(comment_params)
		new_comment.user_id = current_user.id
		new_comment.movie_id = movie.id
		new_comment.save
		redirect_to movie_path(movie)
	end

	def show
	end

	def index
	end

	private
	def comment_params
		params.require(:comment).permit(:comment, :title, :movie_id, :user_id)
	end
end