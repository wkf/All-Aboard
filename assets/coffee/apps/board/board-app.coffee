@AA.module 'BoardApp', (BoardApp, App, Backbone, Marionette, $, _) ->

  API =
    showBoardLayout: ->
      BoardApp.Show.Controller.show()

  App.commands.setHandler 'assign:board', ->
    API.showBoardLayout()
