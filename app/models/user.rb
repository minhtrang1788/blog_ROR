class User < ApplicationRecord
    validates :email, length: { in: 2 .. 10,
        too_long: " characters is the maximum allowed" }, presence: true
    validate :trang_valid
     def trang_valid
        if name.present? && name != "Trang"
            errors.add(:name,"name is not validate")
        end
    end
end
