const { environment } = require('@rails/webpacker')

const webpack = require('webpack')

environment.plugins.append(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    jQuery: 'jquery',
    'window.jQuery': 'jquery',
    Popper: ['popper.js', 'default']
  })
)

environment.config.set('resolve.alias', {jquery: 'jquery/src/jquery'}); //#jquery ki smo ga napisali odzgoraj smo v tej vrstici povedali tocno pot do jquery


module.exports = environment
