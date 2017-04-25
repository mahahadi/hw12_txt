class Patient < ActiveRecord::Base
  belongs_to :doctor
  validates_presence_of :first_name ,:last_name, :doctor , :email , :phone 
  validates_uniqueness_of :doctor , scope: [:first_name ,:last_name]
   validates_format_of :phone, with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/
     validates_format_of :email, with: /\A[\w]([^@\s,;]+)@((?:gmail+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i
    
end
