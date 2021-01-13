class Phone < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: :true
  validates :model, presence: :true
  validates :color, presence: :true
  validates :age, presence: :true
end