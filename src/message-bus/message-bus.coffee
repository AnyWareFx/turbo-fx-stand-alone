console.log 'message-bus'


Message = require './message'
Publisher = require './publisher'
Subscriber = require './subscriber'


class MessageBus
  @subscribers =[]
