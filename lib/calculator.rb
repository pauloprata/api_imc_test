class Calculator

  def self.imc(params)
    altura = params[:height].to_f
    peso = params[:weight].to_f

    imc = peso / (altura * altura)
    obesity = ''
    if imc < 17
      classifaction = 'Muito abaixo do peso'
    elsif imc <= 18.49
      classifaction = 'Abaixo do peso'
    elsif imc <= 24.99
      classifaction = 'Peso normal'
    elsif imc <= 29.99
      classifaction = 'Acima do peso'
    elsif imc <= 34.99
      classifaction = 'Obesidade I'
      obesity = 'I'
    elsif imc <= 39.99
      classifaction = 'Obesidade II (severa)'
      obesity = 'II'
    else
      classifaction = 'Obesidade III (mórbida)'
      obesity = 'III'
    end

    serialize_imc(imc, classifaction, obesity)
  end

  private

  def self.serialize_imc(imc, classifaction, obesity)
    {
      imc: imc,
      classifaction: classifaction,
      obesity: obesity
    }
  end
end