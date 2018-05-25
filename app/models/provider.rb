class Provider < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        
  :rememberable, :trackable, :validatable
  has_many :services
  accepts_nested_attributes_for :services, 
    allow_destroy: true,
    reject_if: :all_blank
end
