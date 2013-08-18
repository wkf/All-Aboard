@AA.module 'PlayerApp.Show', (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller =

    show: ->
      @layout = new Show.PlayerLayout()

      @layout.on 'show', =>
        @layout.cardsRegion.show App.request('get:cards:view')
        @layout.cluesRegion.show App.request('get:clues:view')
        @layout.cardRegion.on
          show: -> @$el.addClass 'active'
          close: -> @$el.removeClass 'active'

      App.mainRegion.show @layout

    showCard: (card) ->
      cardView = new App.Views.Card
        model: card
        events:
          click: => @layout.cardRegion.close()

      @layout.cardRegion.show cardView
