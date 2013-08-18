@AA.module 'PlayerApp', (PlayerApp, App, Backbone, Marionette, $, _) ->

  API =
    showPlayerLayout: ->
      PlayerApp.Show.Controller.show()

    join: (boardId, playerId, callback) ->
      socket.post "/boards/join/#{boardId}", {playerId}, callback

    message: (boardId, messageType, messageData, callback) ->
      socket.post "/boards/message/#{boardId}", {
        type: messageType,
        data: messageData
      }, callback

  App.commands.setHandler 'assign:player', ->
    API.showPlayerLayout()

  App.vent.on 'show:card', (card) ->
    PlayerApp.Show.Controller.showCard card
