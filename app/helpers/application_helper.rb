module ApplicationHelper
  def data_br(data_us)
    data_us.strftime("%d/%m/%Y")
  end

  def locale
    I18n.locale == :en ? "Estados Unidos" : "Portugues do Brasil"
  end
end
