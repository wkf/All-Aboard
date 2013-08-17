@AA.module 'CluesApp.List', (List, App, Backbone, Marionette, $, _) ->

  class Clue extends Marionette.ItemView
    template: 'clue'
    className: 'clue'

    events:
      click: 'toggle'

    modelEvents:
      change: 'render'

    toggle: ->
      @model.set 'selected', not @model.get('selected')

  class ClueGroup extends Marionette.CollectionView
    className: 'clue-group'
    itemView: Clue

    initialize: ->
      @collection = @model.get('clues')

  class List.ClueGroups extends Marionette.CollectionView
    itemView: ClueGroup
