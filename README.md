# Vine


### Install

    gem install vine

### Setup

    require "vine"

### Examples

    { a: [ 100, 200 ] }.access("a.0")
    => 100 

    { a: { b: 100 } }.access("a.b") 
    => 100 

    [1,2,3,4].segmentation(2)
    => [[[1], [2, 3, 4]], [[1, 2], [3, 4]], [[1, 2, 3], [4]]] 




