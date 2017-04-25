class Doctor < ActiveRecord::Base
    has_many :patients
    validates_presence_of :first_name ,:last_name , :email  , :license_number
   
     validates_uniqueness_of :license_number
     validates_format_of :phone, with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/
     validates_format_of :email, with: /\A[\w]([^@\s,;]+)@((?:gmail+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i

end