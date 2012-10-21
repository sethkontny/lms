class Resource < ActiveRecord::Base
  attr_accessible :description, :featured, :link, :resourceable_id, :resourceable_type, :status, :title
  belongs_to :resourceable, :polymorphic => true
end
