module.exports =
  show: (req, res) ->
    res.view
      title: 'Board',
      bootstrap:
        players: [1, 2]

  join: (req, res) ->
    Boards.subscribe(req.socket, req.param 'id')
    res.json {status: 'joined'}

  message: (req, res) ->
    Boards.subscribers(req.param 'id').forEach (socket) ->
      unless req.socket.id is socket.id
        socket.json.send {
          type: req.param 'type'
          data: req.param 'data'
        }
    res.json {status: 'sent'}
