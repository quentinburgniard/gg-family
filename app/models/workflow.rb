class Workflow < ApplicationRecord
  has_and_belongs_to_many :workflow_stages, inverse_of: :workflow
  accepts_nested_attributes_for :workflow_stages,
    :allow_destroy => true,
    :reject_if     => :all_blank
end
