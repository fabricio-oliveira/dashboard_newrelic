# frozen_string_literal: true

Dashing.scheduler.every '10s' do
  release = last_version
  status = status_version release["version"].to_s
  msg = "#{release['model']} - #{release['version']}"
  Dashing.send_event('last-version', title: 'Last Version Fota', status: status,
                                     text: msg)
end

#
# def last_version
#   url = APP_CONFIG['fota_sand_box_uri_format']
#   response = HTTParty.get("#{url}/api/v1/release/last")
#   return { 'model': nil, 'version': nil } if response.code == :no_content
#   JSON.parse response.body
# end

def status_version(version)
  data_version = "#{version[0..3]}-#{version[4..5]}-#{version[6..7]}".to_date
  data_version == Date.today ? 'OK' : 'FAIL'
end

def last_version
  p Dashing.configure.redis_host
  { model: "Q1", version: 2017010101 }
end

# current_valuation = 0
#
# Dashing.scheduler.every '10s' do
#   last_valuation = current_valuation
#   current_valuation = rand(10)
#
#   Dashing.send_event('valuation', { current: current_valuation,
#                                     last: last_valuation })
#   Dashing.send_event('synergy',   { value: rand(10) })
#   Dashing.send_event('welcome',   { title: 't1', text: 't2'})
# end
