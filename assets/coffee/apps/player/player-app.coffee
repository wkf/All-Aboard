@AA.module 'PlayerApp', (PlayerApp, App, Backbone, Marionette, $, _) ->

  API =
    showPlayerLayout: ->
      PlayerApp.Show.Controller.show()

  App.commands.setHandler 'assign:player', ->
    API.showPlayerLayout()