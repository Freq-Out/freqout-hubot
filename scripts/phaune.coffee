# Description:
#   Phaune Radio roaaars!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot phaune now - Display what's going on air
#   hubot phaune stream - Displays a link to stream the radio
#   hubot phaune www - Displays a link to the website
#
# Author:
#   teo-sk

module.exports = (robot) ->
  robot.respond /phaune stream/i, (msg) ->
    msg.send "MP3: http://airtime.phaune.com:8000/phaune_128"
    msg.send "OGG: http://airtime.phaune.com:8000/phogg_128"

  robot.respond /phaune www/i, (msg) ->
    msg.send "http://www.phauneradio.com"
    
  robot.respond /phaune now/i, (msg) ->
    msg.http('http://airtime.phaune.com/api/live-info/')
    .get() (err, res, body) ->
      content = JSON.parse(body)
      track = content.current.name
      msg.send track 