@AA = do (Backbone) ->
  App = new Backbone.Marionette.Application()

  App.CHARACTERS = ['Col. Mustard', 'Prof. Plum', 'Mr. Green', 'Mrs. Peacock', 'Miss Scarlet', 'Mrs. White']
  App.WEAPONS = ['Knife', 'Candlestick', 'Revolver', 'Rope', 'Lead Pipe', 'Wrench']
  App.ROOMS = ['Hall', 'Lounge', 'Dining Room', 'Kitchen', 'Ball Room', 'Conservatory', 'Billiard Room', 'Library', 'Study']

  App.addRegions
    mainRegion: '#main-region'

  App.on 'initialize:after', ->
    Backbone.history.start()
    App.execute "assign:#{role}"

  App
