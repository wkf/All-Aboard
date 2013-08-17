(function() {
  module.exports = function(req, res, ok) {
    if (req.session.authenticated) {
      return ok();
    } else {
      return res.send("You are not permitted to perform this action.", 403);
    }
  };

}).call(this);
