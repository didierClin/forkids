class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_validation(on: :create) do
    self.profile = Profile.new
  end

  #has_one :profile
  belongs_to :profile
  
  def is_admin?
    self.email == "dc@dc.fr"
  end


end
