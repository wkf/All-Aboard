@AA.module 'PlayerApp.Show', (Show, App, Backbone, Marionette, $, _) ->

  class Show.PlayerLayout extends Marionette.Layout
    template: 'player-layout'
    className: 'player-layout'

    regions:
      headerRegion:  '#header-region'
      actionsRegion: '#action-region'
      cardsRegion:   '#cards-region'
      cluesRegion:   '#clues-region'

