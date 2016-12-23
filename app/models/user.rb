class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tasks
end

class Ability
  include CanCan::Ability
  user ||= User.new # tạo người dùng mới nếu chưa đăng nhập
  if user.admin?
    can :manage, :all # nếu người dùng admin có thể truy cập đến tất cả các action của tất cả các controller
  else
    can :index, :all # ngược lại, người dùng có quyền truy cập đến action index của tất cả các controller
    can [:index,:show],[Book,Category] #người dùng có quyền truy cập đến action index, show của controller Book,Cateory
  end
end
end
end
<% if can?:update, @article %>
<%= link_to “Edit”, edit_article_path(@article) %>
<% end %>