# coffeelint: disable=max_line_length
Helper = require 'hubot-test-helper'
assert = require 'power-assert'

describe 'regex-response', ->
  room = null

  beforeEach ->
    helper = new Helper('../src/scripts/regex-response.coffee')
    room = helper.createRoom()

  afterEach ->
    room.destroy()

  it 'help', ->
    helps = room.robot.helpCommands()
    assert.deepEqual helps, [
      '<config_from_text> - Reply or Send config_to_text'
    ]
