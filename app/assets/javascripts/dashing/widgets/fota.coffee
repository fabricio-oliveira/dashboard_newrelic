ready: ->
   # This is fired when the widget is done being rendered
   @setColor(@get('status'))

onData: (data) ->
   # Handle incoming data
   # You can access the html node of this widget with `@node`
   # Example: $(@node).fadeOut().fadeIn() will make the node flash each time data comes in.
   @setColor(@get('status'))
   $(@node).fadeOut().fadeIn()

setColor: (status) ->
  if status
    switch status
      when 'RUN' then $(@node).css("background-color", "#29a334") #green
      when 'FAIL' then $(@node).css("background-color", "#b80028") #red
