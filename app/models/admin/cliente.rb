class Admin::Cliente < ApplicationRecord
  has_many :projetos, class_name: 'Admin::Projeto'
  validates :cnpj, uniqueness: true

end
