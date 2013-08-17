@AA.module 'PlayerApp.Show', (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller =

    show: ->
      @layout = new Show.PlayerLayout()

      @layout.on 'show', =>
        @layout.cardsRegion.show App.request('get:cards:view')

      App.mainRegion.show @layout
