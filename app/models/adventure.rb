class Adventure < ApplicationRecord
    has_many :birds


    before_create :slugify  
    
# the slugify method helps that when we create the airline name, we make it a slug that converts the title to the slug value
    def slugify 
        self.slug = title.parameterize
    end

    def avg_likes 
        reviews.average(:score).round(2).to_f
    end
end
