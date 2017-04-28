current_valuation = 0

Dashing.scheduler.every '2s' do
  # last_valuation = current_valuation
  # \current_valuation = rand(10)

  # Dashing.send_event('valuation', { current: current_valuation, last: last_valuation })
  Dashing.send_event('synergy',   { value: rand(10) })
  Dashing.send_event('welcome',   { title: 't1', text: 't2'})
end
