@AA.module 'Collections', (Collections, App, Backbone, Marionette, $, _) ->

  class Collections.Players extends Backbone.Collection
    model: App.Models.Player
