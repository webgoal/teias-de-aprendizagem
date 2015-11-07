class Interest < ActiveRecord::Base
  belongs_to :learning_proposition
  validates :name, :email, :phone, :roles_mask, presence: true
end
