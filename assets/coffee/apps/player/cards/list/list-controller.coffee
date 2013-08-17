@AA.module 'CardsApp.List', (List, App, Backbone, Marionette, $, _) ->

  List.Controller =

    getList: ->
      new List.CardGroups collection: App.request('get:card:groups')