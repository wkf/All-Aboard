@AA.module 'BoardApp.Show', (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller =

    show: ->
      @layout = new Show.BoardLayout()

      @layout.on 'show', =>
        @layout.playersRegion.show App.request('get:players:view')

      App.mainRegion.show @layout
