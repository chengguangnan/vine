# Vine - Access Nested Hash


### Install

    gem install vine

### Usage

    require "vine"

    hash = { a: { b: 100 } }
    hash.vine("a.b")

    hash = { a: [ 100, 200 ] }
    hash.vine("a.0")



