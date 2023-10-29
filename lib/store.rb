class Store < ActiveRecord::Base
    has_many :employees

    validate :has_mens_or_womens?

    validates :name, length: { 
        minimum: 3,
        message: "Must be at least 3 characters long"
    }

    validates :annual_revenue, numericality: {
        only_integer: true, 
        greater_than_or_equal_to: 0,
        message: "Must be a non-negative integer"
    }

    def has_mens_or_womens?
        unless mens_apparel || womens_apparel
            errors.add(:base, "The store must have either men's or women's apparel available")
        end
    end
end