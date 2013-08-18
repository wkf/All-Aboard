@AA.module 'ModalApp.Show', (Show, App, Backbone, Marionette, $, _) ->

  class Show.Roll extends Marionette.ItemView
    template: 'roll'
    className: 'roll'

    initialize: (options={}) ->
      @data = options ? {}
      @data.number ?= _.random(1, 6)

    templateHelpers: ->
      number: @data.number
