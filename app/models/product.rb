class Product < ApplicationRecord
  after_commit -> { broadcast_refresh_later_to "products" }
end
