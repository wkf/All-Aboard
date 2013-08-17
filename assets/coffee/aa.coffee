@AA = do (Backbone) ->
  App = new Backbone.Marionette.Application()

  App.addRegions
    mainRegion: '#main-region'

  App.on 'initialize:after', -> Backbone.history.start()

  App
