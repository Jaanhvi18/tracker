class Review < ApplicationRecord
    belongs_to :profile

    belongs_to :post
    belongs_to :entertainment

end
