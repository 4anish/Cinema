  class Movie < ActiveRecord::Base
    has_many :reviews, dependent: :destroy

    def flop?
      price.blank? || price < 50000000
    end

    def self.released
      where("released_on <= ?", Time.now).order("released_on desc")
    end

    def self.hits
      where('price >= 300000000').order(total_gross: :desc)
    end

    def self.flops
      where('price < 50000000').order(total_gross: :asc)
    end

    def average_stars
      reviews.average(:stars)
    end
    
    def self.recently_added
      order('created_at desc').limit(3)
    end

  end
