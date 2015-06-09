# Description:
#   Random game idea
#
# Commands:
#   hubot game idea types - Lists available game types
#   hubot game idea <type> - Generate a random game idea based on an (optional) type.

generator = require '../lib/generator'

module.exports = (robot) ->

  robot.respond /game idea(?:\s+(.*))?/i, (res) ->
    type = res.match[1] || ''

    if type.toLowerCase() is 'types'

      types = generator.getValidTypes().join(' ')
      res.reply "Valid types are: #{types}"

    else

      text = ''

      unless type is '' or generator.isValidType type
        text += "\"#{type}\" is not a valid type, but here's a random idea anyway:\n"

      text += generator.generate type

      res.reply text