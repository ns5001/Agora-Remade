class CommentsController < ApplicationController
  include CommentHelper

  def create
   create_comment
   flash[:message] = "comment created"
   redirect_to(:back)
  end

  def destroy
   delete_comment
   flash[:message] = "comment deleted"
   redirect_to(:back)
 end

 private

 def comments_params
   params.require(:comment).permit(
     attributes:[
       :text
     ]
   )
end

end
