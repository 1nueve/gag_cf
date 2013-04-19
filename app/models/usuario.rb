class Usuario < ActiveRecord::Base
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: 'Ambos passwords deben ser identicos', if: :password
  # attr_accessible :title, :body
end
