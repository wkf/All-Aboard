@AA.module 'PlayersApp.List', (List, App, Backbone, Marionette, $, _) ->

  class Player extends Marionette.ItemView
    template: 'player'
    className: 'player'

    events:
      touchmove: 'onTouchmove'

    onShow: ->
      {top, left} = @model.get('position')
      @$el.css {top, left}

    onTouchmove: (evt) ->
        evt.preventDefault()

        @$el.css
          left: evt.originalEvent.touches[0].pageX - @$el.width() / 2
          top:  evt.originalEvent.touches[0].pageY - @$el.height() / 2

  class List.Players extends Marionette.CollectionView
    itemView: Player
