require 'should'
fonts = require '../src'

describe 'fonts.js', ->
  describe 'the main function', ->
    it 'should return a string', ->
      fonts().should.be.a.String()

    it 'should throw an error if the font specified does not exist', ->
      (-> fonts 'HI', {font: 'thisfontdoesnotexist'}).should.throw()

    it 'should use defaults when values are not specified', ->
      fonts().should.equal '     __       ______   _____   _______  _______ \n    /  \\     /  ___ \\ / ___ \\ |__   __||__   __|\n   / /\\ \\    | |___\\/| /   \\_|   | |      | |   \n  / /__\\ \\   \\___  \\ | |    _    | |      | |   \n / ______ \\ /\\___| | | \\___/ | __| |__  __| |__ \n/_/      \\_\\\\_____/   \\_____/ |_______||_______|'

    it 'should respond to the inputted text', ->
      (fonts 'HI').should.equal ' _    _  _______ \n| |  | ||__   __|\n| |__| |   | |   \n|  __  |   | |   \n| |  | | __| |__ \n|_|  |_||_______|'

    it 'should respond to the font specified', ->
      # TODO: Add more fonts so this is testable

  describe 'the fonts array', ->
    it 'should be an array', ->
      fonts.fonts.should.be.an.Array

    it 'should contain only strings', ->
      fonts.fonts.forEach (font) ->
        font.should.be.a.String

  fonts.fonts.forEach (fontName) ->
    font = require "../src/fonts/#{fontName}.coffee"
    describe "the #{fontName} font", ->
      it 'should define a lineCount', ->
        font.should.have.property 'lineCount'

      it 'should define a notSupportedChar', ->
        font.should.have.property 'notSupportedChar'

      it 'should have characters with a lineCount-1 amount of newLineChars or n\'s', ->
        newLineChar = font.newLineChar ? 'n'
        for key in font
          do (key) ->
            if key.length() > 1 then return
            (font[key].split newLineChar).should.have.length font.lineCount - 1
