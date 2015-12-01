module Isaac
  class Test < ActiveRecord::Base
    belongs_to :author, class_name: Isaac.author_class

    validates :author_id, presence: true

    def self.author_class
      Isaac.author_class.constantize
    end
  end
end
