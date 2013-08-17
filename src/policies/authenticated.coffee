module.exports = (req, res, ok) ->

  if req.session.authenticated
    # User is allowed, proceed to controller
    ok()
  else
    # User is not allowed
    res.send("You are not permitted to perform this action.", 403)
