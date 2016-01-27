class Info < ActiveRecord::Base

validates :first_name, presence: true, length: { maximum: 10}
validates :last_name, presence: true,length:{maximum:8}
validates :father_name, presence: true, length: { maximum: 20}
validates :DOB, presence: true
validates :DOJ, presence: true
validates :Expericence, presence: true
validates :address, presence: true
validates :prevoius_company, presence: true
validates :contact_no, presence: true
validates :Reference_contact_no, presence: true
validates :sallry, presence: true
end
   