@AA.module 'PlayersApp.List', (List, App, Backbone, Marionette, $, _) ->

  List.Controller =

    getList: ->
      new List.Players collection: App.request('get:players')
