@AA.module 'ModalApp.Show', (Show, App, Backbone, Marionette, $, _) ->

  class Show.Roll extends Marionette.ItemView
    template: 'roll'
    className: 'roll'

    initialize: (options={}) ->
      @data = options ? {}
      @data.number ?= _.random(1, 6)
      @model = App.request('get:players').at(@data.playerId - 1)

    templateHelpers: ->
      number: @data.number
