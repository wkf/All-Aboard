@AA.module 'Collections', (Collections, App, Backbone, Marionette, $, _) ->

  class Collections.CardGroups extends Backbone.Collection
    model: App.Models.CardGroup