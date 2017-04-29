
Dashing.scheduler.every '10s' do
  Dashing.send_event('last-version',   { title: 'Last Version Fota', text: 'teste' })
end

def get_last_version
  response = HTTParty.get('http://localhost:8080/api/v1/release/last')
  return "Nenhuma release cadastrada :(" if response.code == :no_content
  values = JSON.parse response.body
  "#{values['model']} - #{values['version']}"
end



# current_valuation = 0
#
# Dashing.scheduler.every '10s' do
#   last_valuation = current_valuation
#   current_valuation = rand(10)
#
#   Dashing.send_event('valuation', { current: current_valuation, last: last_valuation })
#   Dashing.send_event('synergy',   { value: rand(10) })
#   Dashing.send_event('welcome',   { title: 't1', text: 't2'})
# end
