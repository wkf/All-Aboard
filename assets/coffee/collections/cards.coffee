@AA.module 'Collections', (Collections, App, Backbone, Marionette, $, _) ->

  class Collections.Cards extends Backbone.Collection
    model: App.Models.Card
