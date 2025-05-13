module ApplicationHelper
  def farenheit_to_celcius(farenheit)
    "#{ (farenheit - 32) * 5/9}C"
  end

  # Enviar HTML
  def hero_banner
    styles = "padding: 10px; background: #f1f1f1"
    content_tag(:div, style: styles) do
      yield
    end
  end
end
