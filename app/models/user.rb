class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :family_members, ->(user) {where {}}

  def is_admin?
    self.email == "dc@dc.fr"
  end


end
