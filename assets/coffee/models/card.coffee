@AA.module 'Models', (Models, App, Backbone, Marionette, $, _) ->

  class Models.Card extends Backbone.Model
    defaults:
      image: 'http://internet.jpg.to'
