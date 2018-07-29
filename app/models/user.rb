class User < ApplicationRecord
    validates :name, :presence: true
    validates :email, length: { in: 4 .. 255,
        too_long: " characters is the maximum allowed" }, presence: true , uniqueness: {casensitive: false},
    validate :trang_valid
     def trang_valid
        if name.present? && name != "Trang"
            errors.add(:name,"name is not validate")
        end
    end
end
