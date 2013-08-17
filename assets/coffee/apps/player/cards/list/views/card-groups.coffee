@AA.module 'CardsApp.List', (List, App, Backbone, Marionette, $, _) ->

  class Card extends Marionette.ItemView
    template: 'card'
    className: 'card'

  class CardGroup extends Marionette.CompositeView
    template: 'card-group'
    itemView: Card
    itemViewContainer: '.cards'

    initialize: ->
      @collection = @model.get('cards')

  class List.CardGroups extends Marionette.CollectionView
    itemView: CardGroup
