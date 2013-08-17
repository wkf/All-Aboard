@AA.module 'PlayerApp.Show', (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller =

    show: ->
      App.mainRegion.show new Show.PlayerLayout()
