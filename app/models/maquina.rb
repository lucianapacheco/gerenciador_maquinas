class Maquina < ApplicationRecord

    validates :nome, length: { minimum: 2, maximum: 80 }
    validates :descricao, length: { maximum: 1000 }
    validates :garantia, numericality: { only_integer: true }
    
    validate:checar_data

    def checar_data
        if (self.compra > Date.today)
        errors.add(:compra, ": A data de compra não pode estar no futuro")
        end
    end
    
   before_destroy :checar_tempo_limite

    def checar_tempo_limite
       
       if (self.created_at + 30.minutes > Time.zone.now)
        errors.add(:created_at, ": Uma máquina não pode ser removida se ela foi criada há mais de 30 minutos")
        end  
        errors.present?
    end
end
    