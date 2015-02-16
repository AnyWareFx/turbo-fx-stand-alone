console.log 'command-context'


Command = require './command'


class CommandContext
  @undo_stack = []
  @redo_stack = []

  execute: (command) ->
    command.execute()
    @undo_stack.push command

  undo: ->
    if command = @undo_stack.pop()
      command.undo()
      @redo_stack.push command

  redo: ->
    if command = @redo_stack.pop()
      command.redo()
      @undo_stack.push command

  rewind: ->
    while command = @undo_stack.pop()
      command.undo()
      @redo_stack.push command

  replay: ->
    while command = @redo_stack.pop()
      command.redo()
      @undo_stack.push command
