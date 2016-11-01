class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook]
  has_many :lists
  has_many :tours

  def self.from_omniauth(auth)
   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
     user.email = auth.info.email
     user.password = Devise.friendly_token[0,20]
   end
  end

  def list_to_display
    if params[:list_id]
      @current_list = self.lists.find_by_id(params[:list_id])
    else
      @current_list = self.lists.first
    end
      @current_list
  end

  def sort_apartments
    list = list_to_display
    @sorted_apartments = list.apartments.sort_by do |apartment|
      apartment[:price_range]
    end
  end

end
