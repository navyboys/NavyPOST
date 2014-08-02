# Using normal metaprogramming
=begin
module  Voteable
  module ClassMethods
    def my_class_method
      has_many :votes, as: :voteable
    end    
  end
  
  module InstanceMethods
    def total_votes
      self.up_votes - self.down_votes
    end

    def up_votes
      self.votes.where(vote: true).size
    end

    def down_votes
      self.votes.where(vote: false).size
    end    
  end
  
  def self.included(receiver)
    receiver.extend ClassMethods
    receiver.send :include, InstanceMethods
    receiver.class_eval do
      my_class_method
    end
  end
end
=end