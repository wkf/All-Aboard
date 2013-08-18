@AA.module 'BoardApp.Show', (Show, App, Backbone, Marionette, $, _) ->

  class Show.BoardLayout extends Marionette.Layout
    template: 'board-layout'
    className: 'board-layout'

    regions:
      playersRegion: '#players-region'
      modalRegion:   '#modal-region'
      footerRegion:  '#footer-region'
