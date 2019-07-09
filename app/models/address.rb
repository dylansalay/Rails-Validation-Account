class Address < ApplicationRecord

    belongs_to :account

    validates :street_number, :street_name, :city, :state, :zip, presence: true, uniqueness: { scope: :account }
    validates :zip, length: { is: 5 }
    validates :state, length: { is: 2 }


    # validates :icao, :state, :presence => true
    # validates :icao, :uniqueness => { case_sensitive: false }
    #
    # def icao=(val)
    #     write_attribute :icao, val.upcase
    # end

end
