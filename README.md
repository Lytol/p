# p [![Gem Version](https://badge.fury.io/rb/p.png)](http://badge.fury.io/rb/p) [![Build Status](https://travis-ci.org/Lytol/p.png)](https://travis-ci.org/Lytol/p)

`p` is a project generator - for anything!


Usage
-----

`p new [--template=<template>] <project-name>`

The `new` command will generate a new project by creating a new directory called `project-name` and using the specified template. There are built-in templates (explained below), but you can also define your own templates and place them in `~/.p`. If you do not specify a template, it will use the default template which is just a README.

### Built-in Templates

- **Default**: `p new <gem-name>` - See <https://github.com/Lytol/p/blob/master/lib/templates/default.rb>
- **Rubygem**: `p new -t gem <gem-name>` - See <https://github.com/Lytol/p/blob/master/lib/templates/gem.rb>
- **Sinatra**: `p new -t sinatra <app-name>` - See <https://github.com/Lytol/p/blob/master/lib/templates/sinatra.rb>


Creating your own templates
---------------------------

You can create your own templates within your home directory at `~/.p`. The template name will be the filename without the `.rb` extension. For example, if you create a template file called `go.rb`, then you could generate a Go project with `p new --template=go myapp`.


Contributing
------------

Fork and send a pull request and I'll review as quickly as possible. Thanks!
