@AA.module 'PlayerApp.Show', (Show, App, Backbone, Marionette, $, _) ->

  class Show.PlayerLayout extends Marionette.Layout
    events:
      'click #roll': ->
        socket.post "/boards/message/1", {
          type: 'roll',
          data: {playerId: App.playerId}
        }, (err, data) -> console.log(err, data)

    template: 'player-layout'
    className: 'player-layout'

    initialize: ->
      @model = App.request('get:players').at(App.playerId - 1)

    regions:
      headerRegion:  '#header-region'
      actionsRegion: '#action-region'
      cardsRegion:   '#cards-region'
      cluesRegion:   '#clues-region'
      cardRegion:    '#card-region'
