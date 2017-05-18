# hubot-regex-response

[![Greenkeeper badge](https://badges.greenkeeper.io/moqada/hubot-regex-response.svg)](https://greenkeeper.io/)

[![NPM version][npm-image]][npm-url]
[![NPM downloads][npm-download-image]][npm-download-url]
[![Build Status][travis-image]][travis-url]
[![Dependency Status][daviddm-image]][daviddm-url]
[![DevDependency Status][daviddm-dev-image]][daviddm-dev-url]
[![License][license-image]][license-url]

Respond messages by RegExp configs.

## Installation

```
npm install hubot-regex-response --save
```

Then add **hubot-regex-response** to your `external-scripts.json`:

```json
["hubot-regex-response"]
```

## Sample Interaction

```
User> hey hey moqada is okada
Hubot> moqada is  okama

User> i love potato
Hubot> User: potato
```

This interactions configured following configs.

```json
[
  {
    "from": "(moqada is )okada",
    "to": "<%= m[1] %> okama",
  },
  {
    "from": "(potato)",
    "to": "<%= m[1] %>",
    "method": "reply"

  }
]
```

to Environment variables.

```
export HUBOT_REGEX_RESPONSE_CONFIGS='[{"from":"(moqada is )okada","to":"<%= m[1] %> okama"},{"from":"(potato)","to":"<%= m[1] %>","method":"reply"}]'
```


## Commands

```
<config_from_text> - Reply or Send config_to_text
```

## Configurations

```
HUBOT_REGEX_RESPONSE_CONFIGS - Set JSON string for config response
```

This JSON string is Array of following Object.

- `from`: Target messages (using RegExp string)
- `to`: Template of Responding message (using lodash.template)
- `method`: `send` or `reply` (optional, default: `send`)

See Sample configs at section of Sample Interaction


[npm-url]: https://www.npmjs.com/package/hubot-regex-response
[npm-image]: https://img.shields.io/npm/v/hubot-regex-response.svg?style=flat-square
[npm-download-url]: https://www.npmjs.com/package/hubot-regex-response
[npm-download-image]: https://img.shields.io/npm/dt/hubot-regex-response.svg?style=flat-square
[travis-url]: https://travis-ci.org/moqada/hubot-regex-response
[travis-image]: https://img.shields.io/travis/moqada/hubot-regex-response.svg?style=flat-square
[daviddm-url]: https://david-dm.org/moqada/hubot-regex-response
[daviddm-image]: https://img.shields.io/david/moqada/hubot-regex-response.svg?style=flat-square
[daviddm-dev-url]: https://david-dm.org/moqada/hubot-regex-response#info=devDependencies
[daviddm-dev-image]: https://img.shields.io/david/dev/moqada/hubot-regex-response.svg?style=flat-square
[license-url]: http://opensource.org/licenses/MIT
[license-image]: https://img.shields.io/npm/l/hubot-regex-response.svg?style=flat-square
