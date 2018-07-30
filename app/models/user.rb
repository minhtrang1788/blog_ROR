class User < ApplicationRecord
    validates :name, presence: true, length: {in: 4 .. 255}
    validates :email, length: { in: 4 .. 255,
        too_long: " characters is the maximum allowed" }, presence: true , uniqueness: {casensitive: false},
        format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "have to right format for email"}
    has_secure_password
   # validate :trang_valid
     def trang_valid
        if name.present? && name != "Trang"
            errors.add(:name,"name is not validate")
        end
    end
end

