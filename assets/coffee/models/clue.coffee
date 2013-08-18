@AA.module 'Models', (Models, App, Backbone, Marionette, $, _) ->

  class Models.Clue extends Backbone.Model
    defaults:
      selected: false