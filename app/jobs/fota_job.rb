
Dashing.scheduler.every '10s' do
  p 'teste'
  Dashing.send_event('welcome',   { title: 'Last Version Fota', text: 'teste' })
end

def get_last_version
  response = HTTParty.get('http://localhost:8080/api/v1/release/last')
  return "Nenhuma release cadastrada :(" if response.code == :no_content
  values = JSON.parse response.body
  p "#{values['model']} - #{values['version']}"
  "#{values['model']} - #{values['version']}"
end
