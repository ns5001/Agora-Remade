class CommentsController < ApplicationController


  def create
  # binding.pry
   Comment.create(comments_params)
   flash[:message] = "comment created"
   redirect_to(:back)
  end

  def destroy
    comment = Comment.find_by_id(params[:id])
    comment.destroy
   flash[:message] = "comment deleted"
   redirect_to(:back)
 end

 private

 def comments_params
   params.require(:comment).permit(:text, :apartment_list_id)
 end

end
