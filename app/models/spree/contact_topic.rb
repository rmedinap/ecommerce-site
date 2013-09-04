module Spree
	class ContactTopic < ActiveRecord::Base
    attr_accessible :name, :emails

	  validates :name,  :emails, :presence => true
	  validates :name,  :uniqueness => true

    has_many :messages, :foreign_key => :topic_id, dependent: :destroy
	end
end
