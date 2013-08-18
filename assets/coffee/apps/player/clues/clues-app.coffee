@AA.module 'CluesApp', (CluesApp, App, Backbone, Marionette, $, _) ->

  API =
    getList: -> CluesApp.List.Controller.getList()

  App.reqres.setHandler 'get:clues:view', API.getList

  App.addInitializer ->
    clues = new App.Collections.ClueGroups [
      name: 'suspects'
      clues: new App.Collections.Clues App.CHARACTERS.map (character) -> name: character
    ,
      name: 'weapons'
      clues: new App.Collections.Clues App.WEAPONS.map (weapon) -> name: weapon
    ,
      name: 'rooms'
      clues: new App.Collections.Clues App.ROOMS.map (room) -> name: room
    ]

    App.reqres.setHandler 'get:clue:groups', -> clues
