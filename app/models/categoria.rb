class Categoria < ActiveRecord::Base
    has_many :reservas
end
