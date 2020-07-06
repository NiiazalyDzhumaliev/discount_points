class User < ApplicationRecord
    has_many :transactions, foreign_key: 'author_id', class_name: 'Transaction'
end
