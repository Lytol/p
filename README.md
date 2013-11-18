# p [![Gem Version](https://badge.fury.io/rb/p.png)](http://badge.fury.io/rb/p) [![Build Status](https://travis-ci.org/Lytol/p.png)](https://travis-ci.org/Lytol/p)

`p` is a project generator


Usage
-----

`p <project-type> [project-name]`

If `project-name` is omitted, it will use the current directory; otherwise, it will create the project in a new directory also called `project-name`.


Design
------

- Templates are defined in `templates/*.rb`
- Definitions should include `options` and `actions`
- `options` should be able to have defaults and can be required or optional
- `actions` can inherit from other actions types

References
----------

* `bundle gem`
* Rails generator
