{exec} = require 'child_process'
fs = require 'fs'
convert = require './src/index'
http = require 'http'

task 'build', 'Compiles coffeescript into javascript.', ->
  exec 'coffee -c -o lib src', (err, sdtout, sdterr) ->
    throw err if err
    console.log sdtout + sdterr

option '-f', '--font [FONT]', 'Font to be used when converting.'
option '-t', '--text [TEXT]', 'Text to display.'

task 'test', 'Tests how fonts display.', (options) ->
  str = options.text ? 'ABCD\nEF G\nHIJKLM\nNOPQRST\nUVWXYZ\nabcd\nefg\nhijklm\nnopqrst\nuvwxyz\n12345\n67890\n,./<>?;\n\':"[]\n\\{}|`~\n!@#$\n%^&*()\n_+-='
  console.log "#{convert str, {font: options.font}}\n#{str}"
