# Description:
#  Hubot enjoys providing GIFS
#
# Dependencies:
# None
#
# Configuration:
# None
#
# Commands:
#  gif me <query> - Returns GIF with whatever they asked for
#
# SimplySarina
# Rasterblast

module.exports = (robot)->
  robot.respond /(giphy) (me)? (.*)/i,
  (msg) ->
    imageMe msg, msg.match[3], (url) ->
      msg.http(https://giphy.com/)
        .get() (err, res, body) ->
          result = JSON.parse(body)

          rnd = Math.floor(Math.random)
          msg.send.url[rnd]
