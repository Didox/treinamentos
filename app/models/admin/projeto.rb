class Admin::Projeto < ApplicationRecord
  belongs_to :cliente, class_name: 'Admin::Cliente'
end
