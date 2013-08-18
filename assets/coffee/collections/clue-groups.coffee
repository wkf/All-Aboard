@AA.module 'Collections', (Collections, App, Backbone, Marionette, $, _) ->

  class Collections.ClueGroups extends Backbone.Collection
    model: App.Models.ClueGroup
