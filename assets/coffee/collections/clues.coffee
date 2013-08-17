@AA.module 'Collections', (Collections, App, Backbone, Marionette, $, _) ->

  class Collections.Clues extends Backbone.Collection
    model: App.Models.Clue
