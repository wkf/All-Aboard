@AA.module 'PlayerApp', (PlayerApp, App, Backbone, Marionette, $, _) ->

  App.playerId = location.pathname.match(/^.*?(\d*)$/)[1]

  window.API = API =
    showPlayerLayout: ->
      PlayerApp.Show.Controller.show()

    join: (boardId = 1, playerId = App.playerId, callback = ->) ->
      socket.post "/boards/join/#{boardId}", {playerId}, callback

    message: (boardId = 1, type, data, callback) ->
      socket.post "/boards/message/#{boardId}", {type, data}, callback

  App.commands.setHandler 'assign:player', ->
    API.showPlayerLayout()

  App.vent.on 'show:card', (card) ->
    PlayerApp.Show.Controller.showCard card
