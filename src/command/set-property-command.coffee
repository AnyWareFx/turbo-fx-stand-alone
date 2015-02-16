console.log 'set-property-command'


Command = require './command'


class SetPropertyCommand extends Command
  constructor: (@target, @name, @value) ->
    super target
    @oldValue = target.get 'value'

  execute: ->
    @target.set 'name', @value

  undo: ->
    @target.set 'name', @oldValue
