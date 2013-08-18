@AA.module 'CluesApp.List', (List, App, Backbone, Marionette, $, _) ->

  List.Controller =

    getList: ->
      new List.ClueGroups collection: App.request('get:clue:groups')
