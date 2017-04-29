class Dashing.ColorText extends Dashing.Text

  ready: ->
    @setColor('RUN')
    #Dashing.Text::ready.call @
    super



  onData: (data) ->
    # Handle incoming data
    # You can access the html node of this widget with `@node`
    # Example: $(@node).fadeOut().fadeIn() will make the node flash each time data comes in.
    @setColor(@get('status'))
    $(@node).fadeOut().fadeIn()
    # Dashing.Text::onData.call @
    super


  setColor: (status) ->
    if status
      switch status
        when 'RUN' then $(@node).css("background-color", "#29a334") #green
        when 'FAIL' then $(@node).css("background-color", "#b80028") #red
        else "#000000"
