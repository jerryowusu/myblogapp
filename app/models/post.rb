class Post < ApplicationRecord 
    belongs_to :user
    has_many :comments
    has_many :likes
  

    after_save :update_posts_counter

    def update_posts_counter
        user.update(
            posts_counter: user.posts.count
        )
    end 

    def five_most_recent_comments
        comments.limit(5)
    end
end