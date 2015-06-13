# Description:
#   Pugme is the most important thing in life
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot otter me - Receive a otter

module.exports = (robot) ->

  robot.respond /otter me/i, (msg) ->
    msg.http("http://otterme.herokuapp.com/random")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).otter

  robot.respond /how many otters are there/i, (msg) ->
    msg.http("http://otterme.herokuapp.com/count")
      .get() (err, res, body) ->
        msg.send "There are #{JSON.parse(body).otter_count} otters."

