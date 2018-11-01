class Order < ApplicationRecord
  belongs_to :movie, optional: true
end
