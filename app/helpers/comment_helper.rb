module CommentHelper
  def create_comment
    comment = Comment.create(comments_params)
    list = List.find(params['comment']['list_id'])
    apartment = list.apartments.find(params['comment']['apartment_id'])
    apartment_list = ApartmentList.find_by(apartment_id: apartment.id, list_id: list.id)
    apartment_list.comments.create(text: params['comment']['text'])
  end

  def delete_comment
    comment = Comment.find_by_id(params[:id])
    comment.destroy
  end
end
