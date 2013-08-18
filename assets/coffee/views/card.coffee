@AA.module 'Views', (Views, App, Backbone, Marionette, $, _) ->

  class Views.Card extends Marionette.ItemView
    template: 'card'
    className: 'card'

    events:
      click: 'showCard'

    showCard: ->
      App.vent.trigger 'show:card', @model
