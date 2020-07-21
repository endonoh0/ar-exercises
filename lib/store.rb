class Store < ActiveRecord::Base
    has_many :employees

    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, only_integer: true }
    validate :check_apparel

    def check_apparel
        if !self.mens_apparel && !self.womens_apparel
            errors.add(:apparel, "We only sell costumes for pets.")
        end
    end
end
