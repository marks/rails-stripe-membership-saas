class Role
  include Mongoid::Document
  include Mongoid::Timestamps

  # field list for mongoid from original schema.rb
  field :name, :type => String
  field :resource_type, :type => String
  field :resource_id, :type => Integer

  has_and_belongs_to_many :users
  belongs_to :resource, :polymorphic => true

  scopify
end
