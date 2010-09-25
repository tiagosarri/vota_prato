class Receita < ActiveRecord::Base
  validates_presence_of :conteudo, :message => " -deve ser preenchido"
  validates_presenfe_of :prato_id
  validates_associated :prato

  belongs_to :prato
end
