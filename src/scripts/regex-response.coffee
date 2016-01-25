# Description
#   Respond messages by RegExp configs
#
# Commands:
#   <config_from_text> - Reply or Send config_to_text
#
# Configuration:
#   HUBOT_REGEX_RESPONSE_CONFIGS - Set JSON string for config response
#
# Author:
#   moqada <moqada@gmail.com>
template = require 'lodash.template'
PREFIX = 'HUBOT_REGEX_RESPONSE_'
CONFIGS = JSON.parse process.env["#{PREFIX}CONFIGS"] or '[]'


module.exports = (robot) ->

  robot.hear /^(.*)$/i, (res) ->
    for config in CONFIGS
      r = new RegExp(config.from, 'm')
      match = r.exec res.match[1]
      if match
        method = config.method or 'send'
        res[method] template(config.to)({m: match})
