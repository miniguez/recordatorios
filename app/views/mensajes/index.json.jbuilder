json.array!(@mensajes) do |mensaje|
  json.extract! mensaje, :id, :respuesta, :date
  json.url mensaje_url(mensaje, format: :json)
end
