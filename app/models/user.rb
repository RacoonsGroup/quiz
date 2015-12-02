class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :isaac_tests, class_name: Isaac::Test, foreign_key: :author_id
  has_many :isaac_metrics, class_name: Isaac::Metric, foreign_key: :author_id
end