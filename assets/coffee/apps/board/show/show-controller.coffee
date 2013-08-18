@AA.module 'BoardApp.Show', (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller =

    show: ->
      @layout = new Show.BoardLayout()

      App.mainRegion.show @layout
