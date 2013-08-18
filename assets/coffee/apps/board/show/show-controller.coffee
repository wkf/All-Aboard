@AA.module 'BoardApp.Show', (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller =

    show: ->
      @layout = new Show.BoardLayout()

      @layout.on 'show', =>
        @layout.playersRegion.show App.request('get:players:view')
        @layout.modalRegion.on
          show: -> @$el.addClass 'active'
          close: -> @$el.removeClass 'active'

      App.mainRegion.show @layout

    roll: (data) ->
      _.extend data,
        events:
          click: => @layout.modalRegion.close()

      @layout.modalRegion.show App.request('get:roll:view', data)
