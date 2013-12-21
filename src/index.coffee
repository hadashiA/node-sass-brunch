sass = require 'node-sass'

module.exports = class NodeSassCompiler
  brunchPlugin: yes
  type: 'stylesheet'
  extension: 'sass'
  pattern: /\s[ac]ss$/

  constructor: (@config) ->

  compile: (params, callback) ->
    sass.render
      outputStyle: @config?.outputStyle
      data: params.data
      error: callback
      success: (css) ->
        callback null, data: css
        
    