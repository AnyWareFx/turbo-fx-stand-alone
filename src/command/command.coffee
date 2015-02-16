console.log 'command'


class Command
  constructor: (@target) ->

  execute: ->

  undo: ->

  redo: ->
    @.execute()
