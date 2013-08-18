@AA.module 'CardsApp.List', (List, App, Backbone, Marionette, $, _) ->

  class CardGroup extends Marionette.CompositeView
    template: 'card-group'
    className: 'card-group'
    itemView: App.Views.Card
    itemViewContainer: '.cards'

    initialize: ->
      @collection = @model.get('cards')

  class List.CardGroups extends Marionette.CollectionView
    itemView: CardGroup
