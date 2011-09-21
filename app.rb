require 'rubygems'
require 'ramaze'

# Gearman
require 'gearman'
require 'gearman/server'

# Where are we?
Ramaze.options.roots = [__DIR__]

# Initialize controllers and models
require __DIR__('model/init')
require __DIR__('controller/init')
