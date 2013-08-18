@AA.module 'PlayersApp', (PlayersApp, App, Backbone, Marionette, $, _) ->

  API =
    getList: ->
      PlayersApp.List.Controller.getList()

  App.reqres.setHandler 'get:players:view', API.getList

  App.addInitializer ->
    players = new App.Collections.Players [
      name: 'Player 1'
      image: 'piece-scarlett.png'
      position:
        top: '428px'
        left: '10px'
    ,
      name: 'Player 2'
      image: 'piece-mustard.png'
      position:
        top: '217px'
        left: '10px'
    ]

    App.reqres.setHandler 'get:players', -> players
