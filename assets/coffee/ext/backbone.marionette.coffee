Backbone.Marionette.Renderer.render = (template, data) ->
  throw "Template '" + template + "' not found" if ! JST[template]

  JST[template](data)
