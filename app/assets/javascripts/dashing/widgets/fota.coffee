class Dashing.ColorText extends Dashing.Text

  ready: ->
    @setColor('RUN')
    super



  onData: (data) ->
    @setColor(@get('status'))
    $(@node).fadeOut().fadeIn()
    super


  setColor: (status) ->
    if status
      switch status
        when 'RUN' then $(@node).css("background-color", "#29a334") #green
        when 'FAIL' then $(@node).css("background-color", "#b80028") #red
        else "#FFFFFF "
