@AA.module 'BoardApp', (BoardApp, App, Backbone, Marionette, $, _) ->

  API =
    showBoardLayout: ->
      BoardApp.Show.Controller.show()

  socket.post "/boards/join/1", {}, (err, data) -> console.log(err, data)

  App.commands.setHandler 'assign:board', ->
    API.showBoardLayout()
