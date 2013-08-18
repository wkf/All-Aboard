@AA.module 'PlayersApp.List', (List, App, Backbone, Marionette, $, _) ->

  class Player extends Marionette.ItemView
    template: 'player'
    className: 'player'

    onShow: ->
      {top, left} = @model.get('position')
      @$el.css {top, left}

  class List.Players extends Marionette.CollectionView
    itemView: Player
