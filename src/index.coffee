convertLine = (text, options) ->
    font = require "./fonts/#{options.font ? 'lines'}"
    lines = ("" for i in [0...font.lineCount])
    for c in text.split ""
      for l, i in (font[c] ? font.notSupportedChar).split font.newLineChar ? "n"
        lines[i] += l
    lines = lines.join "\n"

module.exports = (text = "ascii", options = {}) ->
  (convertLine s, options for s in text.split '\n').join '\n'

# Add any other font names here.
module.exports.fonts = [
  'lines'
]
