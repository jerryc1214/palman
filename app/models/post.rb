class Post < ActiveRecord::Base
    has_many :comments
    paginates_per 10
end
